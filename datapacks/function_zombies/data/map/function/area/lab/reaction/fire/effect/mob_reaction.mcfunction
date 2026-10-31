
execute if entity @s[scores={area.reaction.fire_duration=1..}] run return fail
scoreboard players operation @s area.reaction.fire_duration = effect_default area.reaction.fire_duration
function map:area/lab/reaction/fire/effect/detect
data remove entity @s data.root.area.reaction
scoreboard players set @s area.reaction.fire 0
execute at @s if score player area.reaction.fire matches 1.. run function map:area/lab/reaction/fire/effect/mob_reaction_negative
execute at @s unless score player area.reaction.fire matches 1.. run function map:area/lab/reaction/fire/effect/mob_reaction_positive

scoreboard players operation uuid area.reaction.fire_bar.uuid = @s zombie.uuid
execute as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomNameVisible set value 0b
execute as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run data modify entity @s CustomName set value ""