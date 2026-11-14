execute unless entity @s[tag=origin.laser.anchor] run return 0
scoreboard players add @s origin.fx_age 1
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
scoreboard players operation #laser.age origin.fx_age = @s origin.fx_age
execute if score @s origin.fx_age matches 14.. run return run function zombie:skill/creation/origin/laser/fx_finish
execute as @e[type=item_display,tag=origin.laser.model] if score @s origin.fx_id = #fx origin.fx_id run function zombie:skill/creation/origin/laser/scale
