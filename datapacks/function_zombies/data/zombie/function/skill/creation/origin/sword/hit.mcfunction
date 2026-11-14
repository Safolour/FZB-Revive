scoreboard players set #origin.sword.resisted health.damage_resisted 0
scoreboard players operation #origin.sword.resisted health.damage_resisted = @s health.damage_resisted
function zombie:skill/creation/origin/sword/knockback
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.name.diamondsword"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.sword.hit zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:origin.sword}
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.sword.resisted health.damage_resisted
