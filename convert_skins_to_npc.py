#!/usr/bin/env python3
"""
Convert Minecraft player skins to geometry.npc UV format.

geometry.npc UV (1.8.0 format, vanilla):
  head:         UV [0,0],   size [8,10,8]
  nose:         UV [24,0],  size [2,4,2]
  body:         UV [16,20], size [8,12,6]
  body overlay: UV [0,38],  size [8,18,6]
  arm shoulder: UV [40,38], size [8,4,4]
  both arms:    UV [44,22], size [4,8,4]  (left and right share same UV)
  both legs:    UV [0,22],  size [4,12,4] (leg0 and leg1 share same UV)
"""

from PIL import Image
import os
import glob


def cube_faces(u, v, w, h, d):
    """Return (left, top, front, right, bottom, back) face boxes for a cube."""
    return (
        (u,           v + d,     u + d,           v + d + h),  # left   D×H
        (u + d,       v,         u + d + w,       v + d),      # top    W×D
        (u + d,       v + d,     u + d + w,       v + d + h),  # front  W×H
        (u + d + w,   v + d,     u + d + w + d,   v + d + h),  # right  D×H
        (u + d + w + d, v,       u + d + w + d + w, v + d),    # bottom W×D
        (u + d + w + d, v + d,   u + d + w + d + w, v + d + h),# back   W×H
    )


def remap(src, dst, src_box, dst_box):
    """Crop src_box from src, scale to dst_box size, alpha-paste into dst."""
    region = src.crop(src_box)
    dw = dst_box[2] - dst_box[0]
    dh = dst_box[3] - dst_box[1]
    if region.size != (dw, dh):
        region = region.resize((dw, dh), Image.NEAREST)
    dst.paste(region, (dst_box[0], dst_box[1]), region)


def convert_player_to_npc(src_path, dst_path):
    player = Image.open(src_path).convert("RGBA")
    if player.size != (64, 64):
        player = player.resize((64, 64), Image.NEAREST)

    npc = Image.new("RGBA", (64, 64), (0, 0, 0, 0))

    # Player skin UV (standard 64x64 format)
    p_head    = cube_faces( 0, 0,  8, 8, 8)   # head
    p_body    = cube_faces(16, 16, 8, 12, 4)  # body
    p_rleg    = cube_faces( 0, 16, 4, 12, 4)  # right leg
    p_rarm    = cube_faces(40, 16, 4, 12, 4)  # right arm
    p_body_ov = cube_faces(16, 32, 8, 12, 4)  # body overlay
    p_rarm_ov = cube_faces(40, 32, 4, 12, 4)  # right arm overlay

    # NPC geometry.npc UV
    n_head    = cube_faces( 0,  0,  8, 10, 8)  # head (taller: H=10)
    n_body    = cube_faces(16, 20,  8, 12, 6)  # body (deeper: D=6)
    n_body_ov = cube_faces( 0, 38,  8, 18, 6)  # body overlay (taller: H=18, deeper: D=6)
    n_arm     = cube_faces(44, 22,  4,  8, 4)  # both arms (shorter: H=8)
    n_shoulder= cube_faces(40, 38,  8,  4, 4)  # shoulder piece
    n_leg     = cube_faces( 0, 22,  4, 12, 4)  # both legs (Y shifted)

    # HEAD: top/bottom same size, side faces stretch height 8→10
    for i in range(6):
        remap(player, npc, p_head[i], n_head[i])

    # BODY: depth 4→6 (left/right faces widen), Y shifts, front/back same size
    for i in range(6):
        remap(player, npc, p_body[i], n_body[i])

    # BODY OVERLAY: scale player body overlay to NPC's taller/deeper overlay
    for i in range(6):
        remap(player, npc, p_body_ov[i], n_body_ov[i])

    # LEGS: same size as player right leg, just Y+6 — both NPC legs share this UV
    for i in range(6):
        remap(player, npc, p_rleg[i], n_leg[i])

    # ARMS: top/bottom (4×4) copy directly; side faces crop top 8 rows (12→8)
    remap(player, npc, p_rarm[1], n_arm[1])  # top (4×4 → 4×4)
    remap(player, npc, p_rarm[4], n_arm[4])  # bottom (4×4 → 4×4)
    for face_i in (0, 2, 3, 5):  # left, front, right, back
        src = p_rarm[face_i]
        cropped = (src[0], src[1], src[2], src[1] + 8)  # top 8 rows
        remap(player, npc, cropped, n_arm[face_i])

    # SHOULDER: use right arm overlay colors scaled to shoulder faces
    for i in range(6):
        remap(player, npc, p_rarm_ov[i], n_shoulder[i])

    npc.save(dst_path)


skin_dir = "resource_packs/KyungbokAI RP/textures/entity/npcs/kyungbok"
skin_files = sorted(glob.glob(os.path.join(skin_dir, "skin_*.png")))

print(f"Converting {len(skin_files)} kyungbok skins to NPC UV format...")
for path in skin_files:
    convert_player_to_npc(path, path)
    print(f"  done: {os.path.basename(path)}")
print("All done.")
