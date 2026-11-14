# One skill hit per target per cast. The 09/14 hit confirms Slowness II and
# Wither II for 60 ticks; the base-damage inversion is recorded separately.
execute if score @s titan.scatter_hit = #scatter.cast titan.cast_id run return 0
scoreboard players operation @s titan.scatter_hit = #scatter.cast titan.cast_id
scoreboard players set #scatter.resisted health.damage_resisted 0
scoreboard players operation #scatter.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.titan"},{translate:"zb.zombie.laser"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #titan.scatter zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:titan.scatter}
scoreboard players operation @s health.damage_resisted = #scatter.resisted health.damage_resisted
data remove storage revive root.down
execute store result storage titan_skill effects.slow int 1 run scoreboard players get #scatter.slow titan.cfg
execute store result storage titan_skill effects.wither int 1 run scoreboard players get #scatter.wither titan.cfg
execute if entity @s[scores={stat.player=1}] run function zombie:skill/creation/titan/scatter/effects with storage titan_skill effects
