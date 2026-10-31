
execute store result storage zombie range float 0.19 run scoreboard players get @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange
execute store result storage zombie range0 float 0.095 run scoreboard players get @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/display/range with storage zombie

data remove storage zombie range
data remove storage zombie range0



scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay

execute as @e[type=zombie,tag=skill.ultimatechaoszombie] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay run tag @s add target

execute unless entity @e[type=zombie,tag=target] run kill @s


tag @e[type=zombie,tag=target] remove target

scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay
