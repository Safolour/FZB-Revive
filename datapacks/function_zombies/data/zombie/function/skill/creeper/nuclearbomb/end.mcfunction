
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.0"}
execute store result storage zombie nuclearbomb.x int 1 run data get entity @s Pos[0]
execute store result storage zombie nuclearbomb.y int 1 run data get entity @s Pos[1]
execute store result storage zombie nuclearbomb.z int 1 run data get entity @s Pos[2]
execute store result storage zombie nuclearbomb.number int 1 run scoreboard players get number zombie.nuclearbomb
function zombie:skill/creeper/nuclearbomb/tellraw/0 with storage zombie nuclearbomb
function zombie:skill/creeper/nuclearbomb/tellraw/2 with storage zombie nuclearbomb
data remove storage zombie nuclearbomb
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.1"}

scoreboard players reset @a[scores={system.room=4..}] zombie.nuclearbomb
scoreboard players reset number zombie.nuclearbomb

worldborder warning distance 0
