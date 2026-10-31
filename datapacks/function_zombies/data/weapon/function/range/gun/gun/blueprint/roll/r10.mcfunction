# 0..1000 → 1..100（ceil(raw/10)，再夹到 1..100）
scoreboard players add #bp_r weapon.state 9
scoreboard players operation #bp_r weapon.state /= 10 number
execute if score #bp_r weapon.state matches ..0 run scoreboard players set #bp_r weapon.state 1
execute if score #bp_r weapon.state matches 101.. run scoreboard players set #bp_r weapon.state 100
