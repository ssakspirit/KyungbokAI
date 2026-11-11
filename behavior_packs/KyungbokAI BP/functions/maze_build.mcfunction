# 근정전 앞 미로 16개 배치 (기존 10개 교체 + 근정전 양옆 6개 추가). 미로마다 모양과 블록 색이 모두 다름
# 실행 위치: 근정전 마당 근처. 끝에 "확인 필요" 메시지가 나오면 몇 초 뒤 한 번 더 실행 (여러 번 실행해도 결과 동일)

tickingarea add 149 0 -898 245 100 -778 kb_maze

# ---- 미로 보호: 미로 범위(북서쪽 구조 블록 모서리 포함) 아래 y62 를 거부 블록으로 -> 그 위 미로 바닥/벽을 부수거나 놓을 수 없음 ----
fill 150 62 -897 165 62 -881 deny
fill 150 62 -877 165 62 -861 deny
fill 150 62 -857 165 62 -841 deny
fill 150 62 -837 165 62 -821 deny
fill 150 62 -816 165 62 -800 deny
fill 150 62 -795 165 62 -779 deny
fill 169 62 -831 184 62 -815 deny
fill 169 62 -809 184 62 -793 deny
fill 209 62 -830 224 62 -814 deny
fill 209 62 -809 224 62 -793 deny
fill 229 62 -897 244 62 -881 deny
fill 229 62 -877 244 62 -861 deny
fill 229 62 -857 244 62 -841 deny
fill 229 62 -837 244 62 -821 deny
fill 229 62 -816 244 62 -800 deny
fill 229 62 -795 244 62 -779 deny

# 1번 미로 (red) - 새로 추가
structure load kyungbokai:maze_01 150 63 -897
# 2번 미로 (orange) - 새로 추가
structure load kyungbokai:maze_02 150 63 -877
# 3번 미로 (yellow) - 새로 추가
structure load kyungbokai:maze_03 150 63 -857
# 4번 미로 (lime)
structure load kyungbokai:maze_04 150 63 -837
# 5번 미로 (green)
structure load kyungbokai:maze_05 150 63 -816
# 6번 미로 (cyan)
structure load kyungbokai:maze_06 150 63 -795
# 7번 미로 (light_blue)
structure load kyungbokai:maze_07 169 63 -831
# 8번 미로 (blue)
structure load kyungbokai:maze_08 169 63 -809
# 9번 미로 (purple)
structure load kyungbokai:maze_09 209 63 -830
# 10번 미로 (magenta)
structure load kyungbokai:maze_10 209 63 -809
# 11번 미로 (pink) - 새로 추가
structure load kyungbokai:maze_11 229 63 -897
# 12번 미로 (white) - 새로 추가
structure load kyungbokai:maze_12 229 63 -877
# 13번 미로 (silver) - 새로 추가
structure load kyungbokai:maze_13 229 63 -857
# 14번 미로 (gray)
structure load kyungbokai:maze_14 229 63 -837
# 15번 미로 (brown)
structure load kyungbokai:maze_15 229 63 -816
# 16번 미로 (black)
structure load kyungbokai:maze_16 229 63 -795

say 근정전 미로 16개 배치 완료

# ---- 자체 점검 ----
execute unless block 151 64 -895 red_glazed_terracotta run say 확인 필요 - 1번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -888 deny run say 확인 필요 - 1번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 151 64 -875 orange_glazed_terracotta run say 확인 필요 - 2번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -868 deny run say 확인 필요 - 2번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 151 64 -855 yellow_glazed_terracotta run say 확인 필요 - 3번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -848 deny run say 확인 필요 - 3번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 151 64 -835 lime_glazed_terracotta run say 확인 필요 - 4번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -828 deny run say 확인 필요 - 4번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 151 64 -814 green_glazed_terracotta run say 확인 필요 - 5번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -807 deny run say 확인 필요 - 5번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 151 64 -793 cyan_glazed_terracotta run say 확인 필요 - 6번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 158 62 -786 deny run say 확인 필요 - 6번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 170 64 -829 light_blue_glazed_terracotta run say 확인 필요 - 7번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 177 62 -822 deny run say 확인 필요 - 7번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 170 64 -807 blue_glazed_terracotta run say 확인 필요 - 8번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 177 62 -800 deny run say 확인 필요 - 8번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 210 64 -828 purple_glazed_terracotta run say 확인 필요 - 9번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 217 62 -821 deny run say 확인 필요 - 9번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 210 64 -807 magenta_glazed_terracotta run say 확인 필요 - 10번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 217 62 -800 deny run say 확인 필요 - 10번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -895 pink_glazed_terracotta run say 확인 필요 - 11번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -888 deny run say 확인 필요 - 11번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -875 white_glazed_terracotta run say 확인 필요 - 12번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -868 deny run say 확인 필요 - 12번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -855 silver_glazed_terracotta run say 확인 필요 - 13번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -848 deny run say 확인 필요 - 13번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -835 gray_glazed_terracotta run say 확인 필요 - 14번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -828 deny run say 확인 필요 - 14번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -814 brown_glazed_terracotta run say 확인 필요 - 15번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -807 deny run say 확인 필요 - 15번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 230 64 -793 black_glazed_terracotta run say 확인 필요 - 16번 미로가 아직 안 놓였습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
execute unless block 237 62 -786 deny run say 확인 필요 - 16번 미로 아래 거부 블록이 아직 안 깔렸습니다. 몇 초 뒤 maze_build 함수를 한 번 더 실행하세요.
