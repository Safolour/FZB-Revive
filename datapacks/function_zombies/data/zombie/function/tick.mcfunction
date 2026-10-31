
function zombie:summon
function zombie:speed
function zombie:motion
execute if score @s zombie.health > @s zombie.max_health run scoreboard players operation @s zombie.health = @s zombie.max_health
execute as @s at @s if score @s zombie.health matches ..0 run function zombie:death

function zombie:take_damage
function zombie:skill/tick

execute if entity @s[tag=bossbar] at @s run function zombie:bossbar/tick

execute unless entity @e[tag=badheadshot] run tag @s add badheadshot

return fail
tag @s add chosen
execute as @e[tag=mob,tag=!chosen,tag=!pathfinding] if score @s zombie.uuid = @n[tag=chosen] zombie.uuid run tellraw XMM010 [{text:"has same"}]
tag @s remove chosen

