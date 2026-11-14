scoreboard players set #origin.resisted health.damage_resisted 0
scoreboard players operation #origin.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.name.creation.origin.lightning"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.lightning zombie.skill.damage
function player_stat:health/get_damage/skill/immediate_damage
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.resisted health.damage_resisted
