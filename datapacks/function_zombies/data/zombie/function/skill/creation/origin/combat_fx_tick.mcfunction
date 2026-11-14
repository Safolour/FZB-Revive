execute if entity @s[tag=origin.death.fx] run return run function zombie:skill/creation/origin/death/tick
execute if entity @s[tag=origin.phase.line] run return run function zombie:skill/creation/origin/transition/line_tick
execute if entity @s[tag=origin.phase.debris] run return run function zombie:skill/creation/origin/transition/debris_tick
scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #alive origin.owner 0
execute as @e[type=zombie,tag=skill.origin,tag=!origin.p2,scores={zombie.health=1..}] if score @s origin.owner = #owner origin.owner run scoreboard players set #alive origin.owner 1
execute if score #alive origin.owner matches 0 run return run kill @s
execute if entity @s[tag=origin.sword.anchor] run function zombie:skill/creation/origin/sword/tick
execute if entity @s[tag=origin.shovel.anchor] run function zombie:skill/creation/origin/shovel/fx_tick
execute if entity @s[tag=origin.pickaxe.anchor] run function zombie:skill/creation/origin/pickaxe/fx_tick
execute if entity @s[tag=origin.laser.anchor] run function zombie:skill/creation/origin/laser/fx_tick
