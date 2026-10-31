
scoreboard players remove @s area.reaction.fire 1
scoreboard players operation @s[scores={area.reaction.fire=1..}] area.reaction.fire_timer = player_default area.reaction.fire_duration
item replace block 1 -60 1 container.26 from entity @s enderchest.26
data remove block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[-1]
execute unless data block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[-1] run scoreboard players set @s area.reaction.fire 0
item replace entity @s enderchest.26 from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
execute store result storage area root.stat.uuid int 1 run scoreboard players operation uuid area.reaction.fire_bar.uuid = @s uuid
execute as @e[type=armor_stand,tag=bar,tag=player_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=armor_stand,tag=bar,tag=player_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomName set value ""
function map:area/lab/reaction/fire/bar/text1 with storage area root.stat
data remove storage area root