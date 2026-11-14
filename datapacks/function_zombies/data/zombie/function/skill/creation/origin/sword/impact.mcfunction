scoreboard players add @s origin.swings 1
scoreboard players set @s origin.stage 4
scoreboard players set @s origin.fx_age 0
execute at @s run tp @s ~ 92.1 ~
execute at @s run function zombie:skill/creation/origin/sword/impact_fx
execute as @e[type=item_display,tag=origin.sword.shadow] if score @s origin.owner = #owner origin.owner run tp @s 300.5 72 150.5
