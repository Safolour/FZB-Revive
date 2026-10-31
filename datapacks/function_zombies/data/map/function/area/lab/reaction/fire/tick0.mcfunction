
execute if entity @s[scores={area.reaction.fire=-1}] run return fail
execute if entity @s[scores={area.reaction.fire=1..,stat.player=1}] run function map:area/lab/reaction/fire/bar/tick
execute if entity @s[scores={area.reaction.fire=2..}] run function map:area/lab/reaction/fire/effect/player_reaction

scoreboard players remove @s[scores={area.reaction.fire_timer=0..}] area.reaction.fire_timer 1
execute if entity @s[scores={area.reaction.fire_timer=0}] run function map:area/lab/reaction/fire/attribute_player_remove
scoreboard players remove @s[scores={area.reaction.fire_duration=0..}] area.reaction.fire_duration 1