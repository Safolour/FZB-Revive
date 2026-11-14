# No dedicated hit title/sound/particle is attributable in the clean recordings.
scoreboard players set @s titan.m_pending 0
execute if score @s health.damage_resisted matches 1.. run scoreboard players operation @s titan.m_pending = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.creation.titan"}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #titan.melee zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:titan.empowered}
# Preserve an earlier native resisted-damage statistic while queueing this
# ordinary skill for the existing player settlement tick.
execute if score @s titan.m_pending matches 1.. run scoreboard players operation @s health.damage_resisted = @s titan.m_pending
scoreboard players set @s titan.m_pending 0
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
