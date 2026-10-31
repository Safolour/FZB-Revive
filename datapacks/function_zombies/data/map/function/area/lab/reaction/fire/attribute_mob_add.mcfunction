
execute if entity @s[scores={area.reaction.fire_duration=1..}] run return fail
scoreboard players add @s area.reaction.fire 1
execute unless score @s area.reaction.fire_timer matches 1.. run scoreboard players operation @s area.reaction.fire_timer = mob_default area.reaction.fire_timer
scoreboard players operation @s area.reaction.fire_duration = mob_default area.reaction.fire_duration
$data modify entity @s data.root.area.reaction insert -1 value {type:{$(type):0},source:{$(source):0}}

scoreboard players operation uuid area.reaction.fire_bar.uuid = @s zombie.uuid
$execute as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run function map:area/lab/reaction/fire/bar/text {type:$(type)}