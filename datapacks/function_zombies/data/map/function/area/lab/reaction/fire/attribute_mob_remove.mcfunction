
execute if entity @s[scores={area.reaction.fire_duration=1..}] run return fail
scoreboard players add @s area.reaction.fire 1
execute unless score @s area.reaction.fire_timer matches 1.. run scoreboard players operation @s area.reaction.fire_timer = mob_default area.reaction.fire_timer
data remove entity @s data.root.area.reaction[0]
execute unless data entity @s data.root.area.reaction[0] run scoreboard players set @s area.reaction.fire 0
scoreboard players operation uuid area.reaction.fire_bar.uuid = @s uuid
execute as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomName set value ""