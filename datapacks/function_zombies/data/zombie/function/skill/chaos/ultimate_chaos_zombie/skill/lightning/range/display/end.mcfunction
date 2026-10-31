
scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay

execute as @e[type=item_display] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay run tag @s add target

kill @e[type=item_display,tag=target]

scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay

scoreboard players reset @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay
