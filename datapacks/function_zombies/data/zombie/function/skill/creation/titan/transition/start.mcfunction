execute if entity @s[tag=titan.p3.started] run return 0
function zombie:skill/creation/titan/cancel
tag @s add titan.p3.started
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound minecraft:block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
execute as @e[type=armor_stand,tag=bossbar] if score @s zombie.uuid = uuid zombie.uuid run kill @s
execute as @e[type=zombie,tag=skill.origin,tag=origin.p2] if score @s origin.owner = #owner origin.owner at @s run function zombie:skill/creation/titan/transition/activate
