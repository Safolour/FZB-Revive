scoreboard players set #shovel.hit origin.tool_cfg 1
# 十倍数伤害；不发damage事件伪造伤害数字，保存同tick原版待结算伤害。
scoreboard players set #origin.shovel.resisted health.damage_resisted 0
scoreboard players operation #origin.shovel.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.name.diamondshovel"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.shovel zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:origin.shovel}
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.shovel.resisted health.damage_resisted
