
execute if entity @s[scores={area.reaction.fire=-1}] run return fail
function map:area/lab/reaction/fire/bar/tick

execute if entity @s[scores={area.reaction.fire=2..}] run function map:area/lab/reaction/fire/effect/mob_reaction

scoreboard players remove @s[scores={area.reaction.fire_timer=0..}] area.reaction.fire_timer 1
execute if entity @s[scores={area.reaction.fire_timer=0}] run function map:area/lab/reaction/fire/attribute_mob_remove
scoreboard players remove @s[scores={area.reaction.fire_duration=0..}] area.reaction.fire_duration 1
execute if score @s area.reaction.fire matches 1.. run return fail
execute if entity @s[scores={area.reaction.fire_duration=0}] run function map:area/lab/reaction/fire/attribute_mob_add_own
execute unless entity @s[scores={area.reaction.fire_duration=1..}] run scoreboard players operation @s area.reaction.fire_duration = mob_default0 area.reaction.fire_duration
