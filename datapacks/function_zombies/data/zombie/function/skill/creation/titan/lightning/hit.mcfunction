scoreboard players set #titan.resisted health.damage_resisted 0
scoreboard players operation #titan.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.titan"},{translate:"zb.zombie.name.creation.titan.lightning"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #titan.lightning zombie.skill.damage
function player_stat:health/get_damage/skill/immediate_damage
execute store result score @s health.health run data get entity @s Health 10
# 10/22: five wither pulses at 10-tick intervals after the direct hit, then expiry.
effect give @s minecraft:wither 3 2 true
# Slow/blind are explicitly requested skill effects; their duration/level is
# a reconstruction setting because this other-player replay does not expose it.
effect give @s minecraft:slowness 3 0 true
effect give @s minecraft:blindness 3 0 true
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #titan.resisted health.damage_resisted
