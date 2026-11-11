# 파쿠르: 접속한 플레이어를 경회루 출발점 1~N번에 무작위 배치
# 실행한 사람(진행자)은 인원에서 빠지고 이동하지 않음. 최대 15명.
# 채우는 순서: 3번 기준 양옆으로 3,4,2,5,1,6,15,7,14,8,13,9,12,10,11 (N명이면 앞 N자리, 자리 배정은 무작위)
#   예) 5명 -> 1~5번 / 7명 -> 1~6번 + 15번

tag @a remove pk_host
tag @a remove pk_done
tag @a remove pk_pick
tag @s add pk_host

# 3번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] -2.5 64 -989.5 -90 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§63번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 4번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] -2.5 64 -967.5 -90 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§64번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 2번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] -2.5 64 -1011.5 -90 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§62번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 5번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] -2.5 64 -945.5 -90 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§65번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 1번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] -2.5 64 -1033.5 -90 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§61번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 6번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 24.5 64 -929.5 180 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§66번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 15번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 12.5 64 -1047.5 0 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§615번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 7번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 48.5 64 -929.5 180 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§67번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 14번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 36.5 64 -1047.5 0 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§614번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 8번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 72.5 64 -929.5 180 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§68번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 13번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 58.5 64 -1047.5 0 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§613번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 9번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 96.5 64 -929.5 180 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§69번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 12번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 84.5 64 -1047.5 0 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§612번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 10번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 118.5 64 -929.5 180 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§610번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 11번 출발점
tag @r[tag=!pk_host,tag=!pk_done] add pk_pick
tp @a[tag=pk_pick] 108.5 64 -1047.5 0 0
tellraw @a[tag=pk_pick] {"rawtext":[{"text":"§l§a[파쿠르]§r 당신은 §l§611번§r 출발점입니다!"}]}
tag @a[tag=pk_pick] add pk_done
tag @a remove pk_pick

# 결과 안내 (진행자에게만)
scoreboard objectives add pk_count dummy
scoreboard players set pk_placed pk_count 0
execute as @a[tag=pk_done] run scoreboard players add pk_placed pk_count 1
tellraw @s {"rawtext":[{"text":"§l§a[파쿠르]§r 출발 위치 배치 완료: "},{"score":{"name":"pk_placed","objective":"pk_count"}},{"text":"명"}]}
execute if entity @a[tag=!pk_host,tag=!pk_done] run tellraw @s {"rawtext":[{"text":"§c[파쿠르] 출발점(15개)이 부족해 배치되지 못한 플레이어: "},{"selector":"@a[tag=!pk_host,tag=!pk_done]"}]}

tag @a remove pk_host
tag @a remove pk_done
