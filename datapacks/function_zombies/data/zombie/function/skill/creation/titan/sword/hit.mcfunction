# 10/20 second impact: diamond armor 20 / toughness 8, no Protection, red HP 45.8 -> 34.6.
# The project armor equation yields 11.2 from input 25.0 (250 tenths).
scoreboard players set #sword.resisted health.damage_resisted 0
scoreboard players operation #sword.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.titan"},{translate:"zb.zombie.name.diamondsword"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #titan.sword zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:titan.sword}
scoreboard players operation @s health.damage_resisted = #sword.resisted health.damage_resisted
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
