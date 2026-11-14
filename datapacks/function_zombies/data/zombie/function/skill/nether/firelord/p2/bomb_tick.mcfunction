execute as @e[type=ghast,tag=firelord.p2.ghast,limit=1] at @s positioned ~ ~-3 ~ run tp @e[type=block_display,tag=firelord.p2.tnt,tag=!firelord.p2.tnt.falling,limit=1] ~ ~ ~
execute if entity @e[type=ghast,tag=firelord.p2.bomb_arrived] unless entity @s[tag=firelord.p2.bomb_countdown] run scoreboard players set @s zombie.skill_timer 0
execute if entity @e[type=ghast,tag=firelord.p2.bomb_arrived] run tag @s add firelord.p2.bomb_countdown
execute if entity @s[tag=firelord.p2.bomb_countdown] if score @s zombie.skill_timer matches 46.. run tag @e[type=block_display,tag=firelord.p2.tnt] add firelord.p2.tnt.falling
execute unless entity @s[tag=firelord.p2.bomb_countdown] if score @s zombie.skill_timer matches 300.. run tag @e[type=block_display,tag=firelord.p2.tnt] add firelord.p2.tnt.falling
execute as @e[type=block_display,tag=firelord.p2.tnt.falling,tag=!firelord.p2.tnt.landed] at @s run function zombie:skill/nether/firelord/p2/bomb_fall
execute if entity @e[type=block_display,tag=firelord.p2.tnt.landed] run function zombie:skill/nether/firelord/p2/bomb_explode
