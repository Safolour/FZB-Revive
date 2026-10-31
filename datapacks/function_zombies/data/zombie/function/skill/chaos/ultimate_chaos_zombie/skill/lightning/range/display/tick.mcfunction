execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/display/init

scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay

execute as @e[type=item_display] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay run tag @s add target

tp @e[type=item_display,tag=target] ~ ~ ~
scoreboard players operation @e[type=item_display,tag=target] zombie.chaos.ultimate_chaos_zombie.skill_lightningrange = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange
execute as @e[type=item_display,tag=target] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/display/tick0

tag @e[type=item_display,tag=target] remove target
scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 150 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/display/end
