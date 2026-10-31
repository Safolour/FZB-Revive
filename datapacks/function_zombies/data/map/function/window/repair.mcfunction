
scoreboard players operation gold window = repair_gold window
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold window *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold window *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold window *= 4 number
execute as @p[tag=target] run function map:window/addgold

playsound entity.zombie.attack_wooden_door record @a ~ ~ ~ 1 1 0
scoreboard players add @s window.piece0 1

function map:window/repair0 with entity @s data.slab

execute if score @s window.piece0 < @s window.piece run function map:window/repair
