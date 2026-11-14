scoreboard players set #origin.melee.resisted health.damage_resisted 0
scoreboard players operation #origin.melee.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.creation.origin"}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.melee zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:origin.melee}
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.melee.resisted health.damage_resisted
