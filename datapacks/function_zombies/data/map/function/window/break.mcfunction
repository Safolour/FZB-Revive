
playsound entity.zombie.break_wooden_door record @a ~ ~ ~ 1 1 0
scoreboard players remove @s window.piece0 1

function map:window/break0

execute if score @s window.piece0 > @s window.piece run function map:window/break