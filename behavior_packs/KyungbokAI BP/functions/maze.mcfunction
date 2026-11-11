# 미로: 접속한 플레이어를 근정전 미로 16개 중 무작위 미로의 입구에 한 명씩 배치
# 실행한 사람(진행자)은 인원에서 빠지고 이동하지 않음. 최대 16명.
# 매번 무작위 시작 번호(0~15)와 무작위 간격(1,3,...,15)으로 16개 미로를 한 바퀴 돌며 배정 -> 쓰이는 미로와 배정 모두 무작위

tag @a remove mz_host
tag @a remove mz_done
tag @a remove mz_pick
tag @s add mz_host
scoreboard objectives add mz dummy
scoreboard players set mz_16 mz 16
scoreboard players random mz_cur mz 0 15
scoreboard players random mz_stp mz 0 7
scoreboard players operation mz_step mz = mz_stp mz
scoreboard players operation mz_step mz += mz_stp mz
scoreboard players add mz_step mz 1

# ---- 1번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 2번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 3번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 4번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 5번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 6번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 7번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 8번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 9번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 10번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 11번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 12번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 13번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 14번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 15번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# ---- 16번째 배정 ----
tag @r[tag=!mz_host,tag=!mz_done] add mz_pick
execute if score mz_cur mz matches 0 run tp @a[tag=mz_pick] 164.5 64 -880.5 180 0
execute if score mz_cur mz matches 1 run tp @a[tag=mz_pick] 164.5 64 -860.5 180 0
execute if score mz_cur mz matches 2 run tp @a[tag=mz_pick] 164.5 64 -840.5 180 0
execute if score mz_cur mz matches 3 run tp @a[tag=mz_pick] 164.5 64 -820.5 180 0
execute if score mz_cur mz matches 4 run tp @a[tag=mz_pick] 164.5 64 -799.5 180 0
execute if score mz_cur mz matches 5 run tp @a[tag=mz_pick] 164.5 64 -778.5 180 0
execute if score mz_cur mz matches 6 run tp @a[tag=mz_pick] 183.5 64 -814.5 180 0
execute if score mz_cur mz matches 7 run tp @a[tag=mz_pick] 183.5 64 -792.5 180 0
execute if score mz_cur mz matches 8 run tp @a[tag=mz_pick] 223.5 64 -813.5 180 0
execute if score mz_cur mz matches 9 run tp @a[tag=mz_pick] 223.5 64 -792.5 180 0
execute if score mz_cur mz matches 10 run tp @a[tag=mz_pick] 243.5 64 -880.5 180 0
execute if score mz_cur mz matches 11 run tp @a[tag=mz_pick] 243.5 64 -860.5 180 0
execute if score mz_cur mz matches 12 run tp @a[tag=mz_pick] 243.5 64 -840.5 180 0
execute if score mz_cur mz matches 13 run tp @a[tag=mz_pick] 243.5 64 -820.5 180 0
execute if score mz_cur mz matches 14 run tp @a[tag=mz_pick] 243.5 64 -799.5 180 0
execute if score mz_cur mz matches 15 run tp @a[tag=mz_pick] 243.5 64 -778.5 180 0
scoreboard players operation mz_num mz = mz_cur mz
scoreboard players add mz_num mz 1
tellraw @a[tag=mz_pick] {"rawtext":[{"text":"§l§a[미로]§r 당신은 §l§6"},{"score":{"name":"mz_num","objective":"mz"}},{"text":"번§r 미로입니다! 다이아몬드 블록까지 가세요."}]}
tag @a[tag=mz_pick] add mz_done
tag @a remove mz_pick
scoreboard players operation mz_cur mz += mz_step mz
scoreboard players operation mz_cur mz %= mz_16 mz

# 결과 안내 (진행자에게만)
scoreboard players set mz_placed mz 0
execute as @a[tag=mz_done] run scoreboard players add mz_placed mz 1
tellraw @s {"rawtext":[{"text":"§l§a[미로]§r 미로 배치 완료: "},{"score":{"name":"mz_placed","objective":"mz"}},{"text":"명"}]}
execute if entity @a[tag=!mz_host,tag=!mz_done] run tellraw @s {"rawtext":[{"text":"§c[미로] 미로(16개)가 부족해 배치되지 못한 플레이어: "},{"selector":"@a[tag=!mz_host,tag=!mz_done]"}]}

tag @a remove mz_host
tag @a remove mz_done
