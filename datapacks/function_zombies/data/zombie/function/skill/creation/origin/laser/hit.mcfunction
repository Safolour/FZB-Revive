# 十倍数伤害；不发damage事件伪造伤害数字，保存同tick原版待结算伤害。
scoreboard players set #origin.laser.resisted health.damage_resisted 0
scoreboard players operation #origin.laser.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.laser"}]}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.laser zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:origin.laser}
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.laser.resisted health.damage_resisted
execute store result storage origin_tool effect.slow int 1 run scoreboard players get #laser.slow_seconds origin.tool_cfg
execute store result storage origin_tool effect.blind int 1 run scoreboard players get #laser.blind_seconds origin.tool_cfg
execute if entity @s[scores={stat.player=1}] run function zombie:skill/creation/origin/laser/effects with storage origin_tool effect
