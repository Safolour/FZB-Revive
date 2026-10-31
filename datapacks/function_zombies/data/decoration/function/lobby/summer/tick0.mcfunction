
tp @s ~ ~ ~ ~5 ~

particle glow ~ ~ ~ 5 0 5 1 1

scoreboard players add tick lobby.summer 1
execute if score tick lobby.summer matches 20 run particle sonic_boom ~ ~ ~
execute if score tick lobby.summer matches 20 run scoreboard players set tick lobby.summer 0

particle vibration{arrival_in_ticks:40,destination:{type:block,pos:[482,117,660]}} ^ ^ ^10
particle vibration{arrival_in_ticks:40,destination:{type:block,pos:[482,117,660]}} ^ ^ ^-10
particle vibration{arrival_in_ticks:40,destination:{type:block,pos:[482,117,660]}} ^10 ^ ^
particle vibration{arrival_in_ticks:40,destination:{type:block,pos:[482,117,660]}} ^-10 ^ ^
