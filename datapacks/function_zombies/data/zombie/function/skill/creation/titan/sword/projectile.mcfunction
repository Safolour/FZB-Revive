tag @s add titan.sword.anchor
tag @s add mob.skill
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players set @s origin.fx_age 0
execute at @s summon item_display run function zombie:skill/creation/titan/sword/model
