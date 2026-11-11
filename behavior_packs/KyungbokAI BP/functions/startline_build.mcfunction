# 경회루 출발점 재배치: 15개 (서쪽 1~5, 남쪽 6~10, 북쪽 11~15)
# 실행 위치: 경회루 근처(예: 63 83 -988)에서 /function startline_build
# 여러 번 실행해도 결과 동일. 이전 초안(v1/v2)으로 이미 지은 상태여도 정리됨.
# 멀리 있는 칸이 아직 안 불러와졌으면 일부 fill 이 실패함 -> 끝의 점검 메시지가 나오면 몇 초 뒤 한 번 더 실행.

# ---- 0) 공사 범위 전체를 티킹 영역으로 등록 (청크 9x9=81개, startline_resave 끝에서 해제) ----
tickingarea add -6 0 -1051 126 100 -927 kb_startline

# ---- 1) 기존 출발점 10개 + 이전 초안 출발점 자리를 원래 지면으로 복구 ----
setblock 8 63 -1051 sandstone
setblock 22 63 -1051 sandstone
setblock 36 63 -1051 sandstone
setblock 50 63 -1051 sandstone
setblock 78 63 -1051 sandstone
setblock 92 63 -1051 sandstone
setblock 106 63 -1051 sandstone
setblock 8 63 -1050 dirt
setblock 9 63 -1050 dirt
setblock 10 63 -1050 dirt
setblock 22 63 -1050 dirt
setblock 23 63 -1050 dirt
setblock 24 63 -1050 dirt
setblock 36 63 -1050 dirt
setblock 37 63 -1050 dirt
setblock 38 63 -1050 dirt
setblock 50 63 -1050 dirt
setblock 51 63 -1050 dirt
setblock 52 63 -1050 dirt
setblock 78 63 -1050 dirt
setblock 79 63 -1050 dirt
setblock 80 63 -1050 dirt
setblock 92 63 -1050 dirt
setblock 93 63 -1050 dirt
setblock 94 63 -1050 dirt
setblock 106 63 -1050 dirt
setblock 107 63 -1050 dirt
setblock 108 63 -1050 dirt
setblock 8 63 -1046 stone
setblock 22 63 -1046 stone
setblock 36 63 -1046 stone
setblock 50 63 -1046 stone
setblock 78 63 -1046 stone
setblock 92 63 -1046 stone
setblock 106 63 -1046 stone
setblock -5 63 -1040 grass_block
setblock -5 64 -1040 air
setblock -5 65 -1040 air
setblock -5 63 -1039 grass_block
setblock -5 64 -1039 air
setblock -5 65 -1039 air
setblock -6 63 -1038 sandstone
setblock -5 63 -1038 grass_block
setblock -5 64 -1038 air
setblock -1 63 -1038 stone
setblock -5 63 -1036 grass_block
setblock -5 64 -1036 air
setblock -5 65 -1036 air
setblock -5 63 -1035 grass_block
setblock -5 64 -1035 air
setblock -5 65 -1035 air
setblock -6 63 -1034 sandstone
setblock -5 63 -1034 grass_block
setblock -5 64 -1034 air
setblock -1 63 -1034 stone
setblock -5 63 -1026 grass_block
setblock -5 64 -1026 air
setblock -5 65 -1026 air
setblock -5 63 -1025 grass_block
setblock -5 64 -1025 air
setblock -5 65 -1025 air
setblock -6 63 -1024 cut_sandstone
setblock -5 63 -1024 grass_block
setblock -5 64 -1024 air
setblock -1 63 -1024 polished_andesite
setblock -5 63 -1016 grass_block
setblock -5 64 -1016 air
setblock -5 65 -1016 air
setblock -5 63 -1015 grass_block
setblock -5 64 -1015 air
setblock -5 65 -1015 air
setblock -6 63 -1014 cut_sandstone
setblock -5 63 -1014 grass_block
setblock -5 64 -1014 air
setblock -1 63 -1014 polished_andesite
setblock -5 63 -1012 grass_block
setblock -5 64 -1012 air
setblock -5 65 -1012 air
setblock -5 63 -1011 grass_block
setblock -5 64 -1011 air
setblock -5 65 -1011 air
setblock -6 63 -1010 cut_sandstone
setblock -5 63 -1010 grass_block
setblock -5 64 -1010 air
setblock -1 63 -1010 polished_andesite
setblock -5 63 -1006 grass_block
setblock -5 64 -1006 air
setblock -5 65 -1006 air
setblock -5 63 -1005 grass_block
setblock -5 64 -1005 air
setblock -5 65 -1005 air
setblock -6 63 -1004 cut_sandstone
setblock -5 63 -1004 grass_block
setblock -5 64 -1004 air
setblock -1 63 -1004 polished_andesite
setblock -5 63 -998 grass_block
setblock -5 64 -998 air
setblock -5 65 -998 air
setblock -5 63 -997 grass_block
setblock -5 64 -997 air
setblock -5 65 -997 air
setblock -6 63 -996 cut_sandstone
setblock -5 63 -996 grass_block
setblock -5 64 -996 air
setblock -5 65 -996 air
setblock -1 63 -996 polished_andesite
setblock -5 63 -995 grass_block
setblock -5 64 -995 air
setblock -5 65 -995 air
setblock -6 63 -994 cut_sandstone
setblock -5 63 -994 grass_block
setblock -5 64 -994 air
setblock -1 63 -994 polished_andesite
setblock -5 63 -986 grass_block
setblock -5 64 -986 air
setblock -5 65 -986 air
setblock -5 63 -985 grass_block
setblock -5 64 -985 air
setblock -5 65 -985 air
setblock -6 63 -984 cut_sandstone
setblock -5 63 -984 grass_block
setblock -5 64 -984 air
setblock -5 65 -984 air
setblock -1 63 -984 polished_andesite
setblock -5 63 -983 grass_block
setblock -5 64 -983 air
setblock -5 65 -983 air
setblock -6 63 -982 cut_sandstone
setblock -5 63 -982 grass_block
setblock -5 64 -982 air
setblock -1 63 -982 polished_andesite
setblock -5 63 -976 grass_block
setblock -5 64 -976 air
setblock -5 65 -976 air
setblock -5 63 -975 grass_block
setblock -5 64 -975 air
setblock -5 65 -975 air
setblock -6 63 -974 cut_sandstone
setblock -5 63 -974 grass_block
setblock -5 64 -974 air
setblock -1 63 -974 polished_andesite
setblock -5 63 -970 grass_block
setblock -5 64 -970 air
setblock -5 65 -970 air
setblock -5 63 -969 grass_block
setblock -5 64 -969 air
setblock -5 65 -969 air
setblock -6 63 -968 cut_sandstone
setblock -5 63 -968 grass_block
setblock -5 64 -968 air
setblock -1 63 -968 polished_andesite
setblock -5 63 -966 grass_block
setblock -5 64 -966 air
setblock -5 65 -966 air
setblock -5 63 -965 grass_block
setblock -5 64 -965 air
setblock -5 65 -965 air
setblock -6 63 -964 cut_sandstone
setblock -5 63 -964 grass_block
setblock -5 64 -964 air
setblock -1 63 -964 polished_andesite
setblock -5 63 -956 grass_block
setblock -5 64 -956 air
setblock -5 65 -956 air
setblock -5 63 -955 grass_block
setblock -5 64 -955 air
setblock -5 65 -955 air
setblock -6 63 -954 cut_sandstone
setblock -5 63 -954 grass_block
setblock -5 64 -954 air
setblock -1 63 -954 polished_andesite
setblock -5 63 -946 grass_block
setblock -5 64 -946 air
setblock -5 65 -946 air
setblock -5 63 -945 grass_block
setblock -5 64 -945 air
setblock -5 65 -945 air
setblock -6 63 -944 cut_sandstone
setblock -5 63 -944 grass_block
setblock -5 64 -944 air
setblock -1 63 -944 polished_andesite
setblock -5 63 -942 grass_block
setblock -5 64 -942 air
setblock -5 65 -942 air
setblock -5 63 -941 grass_block
setblock -5 64 -941 air
setblock -5 65 -941 air
setblock -6 63 -940 cut_sandstone
setblock -5 63 -940 grass_block
setblock -5 64 -940 air
setblock -1 63 -940 polished_andesite

# ---- 2) 북쪽 담장 철거 (문 x64~70, 북서 옆담 x=-2, 동쪽 담 x=127 유지) ----
fill -6 64 -1050 63 68 -1049 air
fill -6 64 -1051 -3 68 -1051 air
fill -1 64 -1051 63 68 -1051 air
fill 71 64 -1051 126 68 -1049 air
fill -1 64 -1049 3 65 -1046 air
# ---- 2-1) 남쪽 담장 철거 (동쪽 담 x=127 유지) ----
fill -6 64 -929 126 68 -927 air
fill -1 64 -932 3 65 -929 air

# ---- 3) 북쪽/남쪽 바닥을 서쪽 출발선과 같게: 잔디 4칸(y63, 아래 흙) ----
fill -5 63 -1050 63 63 -1047 grass_block replace short_grass
fill -5 63 -1050 63 63 -1047 grass_block replace air
fill -5 63 -1050 63 63 -1047 grass_block replace dirt
fill -5 62 -1050 63 62 -1047 dirt replace grass_block
fill 71 63 -1050 126 63 -1047 grass_block replace short_grass
fill 71 63 -1050 126 63 -1047 grass_block replace air
fill 71 63 -1050 126 63 -1047 grass_block replace dirt
fill 71 62 -1050 126 62 -1047 dirt replace grass_block
fill 64 63 -1049 70 63 -1047 grass_block replace short_grass
fill 64 63 -1049 70 63 -1047 grass_block replace air
fill 64 63 -1049 70 63 -1047 grass_block replace dirt
fill 64 62 -1049 70 62 -1047 dirt replace grass_block
fill 66 63 -1051 68 63 -1050 grass_block replace short_grass
fill 66 63 -1051 68 63 -1050 grass_block replace air
fill 66 63 -1051 68 63 -1050 grass_block replace dirt
fill 66 62 -1051 68 62 -1050 dirt replace grass_block
fill -5 63 -931 126 63 -928 grass_block replace short_grass
fill -5 63 -931 126 63 -928 grass_block replace air
fill -5 63 -931 126 63 -928 grass_block replace dirt
fill -5 62 -931 126 62 -928 dirt replace grass_block
fill -5 63 -928 126 63 -928 grass_block replace sandstone
fill -5 63 -1050 126 63 -1050 grass_block replace sandstone
setblock 124 63 -928 grass_block

# ---- 3-1) [사용자 수정 2026-11-11] 북/남 출발선과 물의 경계에 polished_andesite 한 줄 (서쪽 x=0 줄과 같은 방식) ----
fill 1 62 -1045 122 62 -1045 polished_andesite
fill 1 62 -933 122 62 -933 polished_andesite

# ---- 4) 새 출발점 15개 배치 (칠판 문구 포함 구조물) ----
structure load kyungbokai:start_01 -6 63 -1036
structure load kyungbokai:start_02 -6 63 -1014
structure load kyungbokai:start_03 -6 63 -992
structure load kyungbokai:start_04 -6 63 -970
structure load kyungbokai:start_05 -6 63 -948
structure load kyungbokai:start_06 22 63 -932
structure load kyungbokai:start_07 46 63 -932
structure load kyungbokai:start_08 70 63 -932
structure load kyungbokai:start_09 94 63 -932
structure load kyungbokai:start_10 116 63 -932
structure load kyungbokai:start_11 108 63 -1051
structure load kyungbokai:start_12 84 63 -1051
structure load kyungbokai:start_13 58 63 -1051
structure load kyungbokai:start_14 36 63 -1051
structure load kyungbokai:start_15 12 63 -1051

say 경회루 출발점 15개 배치 완료 (서쪽 1~5번, 남쪽 6~10번, 북쪽 11~15번)

# ---- 5) 자체 점검: 아직 안 된 곳이 있으면 안내 ----
execute if block 30 64 -1050 brick_block run say 확인 필요 - 북쪽 담장 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 100 64 -1050 brick_block run say 확인 필요 - 북쪽 담장 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 30 64 -928 brick_block run say 확인 필요 - 남쪽 담장 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 100 64 -928 brick_block run say 확인 필요 - 남쪽 담장 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 30 63 -928 dirt run say 확인 필요 - 남쪽 바닥 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 100 63 -1050 dirt run say 확인 필요 - 북쪽 바닥 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 60 62 -1045 water run say 확인 필요 - 북쪽 경계 줄 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
execute if block 60 62 -933 water run say 확인 필요 - 남쪽 경계 줄 작업이 아직 안 됐습니다. 몇 초 뒤 startline_build 함수를 한 번 더 실행하세요.
