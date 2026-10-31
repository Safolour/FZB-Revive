
scoreboard players set enemy_count weapon.state 0

scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.lightningrod_timer = cooldown weapon.range.skill.lightningrod
# 闪电子弹：冷却 20 → 5 秒
execute if entity @p[scores={weapon.use=1..,perk.lightning_bullet=1}] run scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.lightningrod_timer = cooldown_perk weapon.range.skill.lightningrod
# 先记下落点：下面的伤害可能把命中的怪打死，之后还要在落点落雷
execute at @s run summon marker ~ ~ ~ {Tags:["lightningrod_strike","lightningrod_strike_new"]}
execute at @s as @e[tag=mob,tag=hitable,distance=..5] at @s run function weapon:range/skill/skill/lightningrod/damage
# 原版闪电实体会对周围 3 格的实体造成 5 点伤害并点燃：给落点 10 格内所有怪 1 秒抗性 V 挡伤害；
# 抗性挡不住着火，另生成一个 1 tick 后清火的标记。放在伤害循环之后：damage 会清掉目标身上的抗性
execute at @e[tag=lightningrod_strike_new] run effect give @e[tag=mob,distance=..10] resistance 1 4 true
execute at @e[tag=lightningrod_strike_new] run summon lightning_bolt ~ ~ ~
execute at @e[tag=lightningrod_strike_new] run summon marker ~ ~ ~ {Tags:["lightning_fire_clear"]}
kill @e[tag=lightningrod_strike]
schedule function weapon:range/skill/skill/lightningrod/fire_clear 1t

execute if score enemy_count weapon.state matches 1 run function weapon:range/skill/skill/lightningrod/hit0 with entity @s data
execute if score enemy_count weapon.state matches 2.. run tellraw @p[scores={weapon.use=1..}] [{translate:zb.item.skill.lightningrod.tellraw.1,with:[{score:{name:enemy_count,objective:weapon.state},color:yellow},{translate:zb.item.skill.tellraw.lightningrod.0}]}]
scoreboard players operation gold weapon.state = gold weapon.range.skill.lightningrod
execute if score timer powerup.timer.instakill matches 1.. if entity @s[tag=!cantinstakill] run scoreboard players operation gold weapon.state = instakill_gold weapon.state
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold weapon.state *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold weapon.state *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold weapon.state *= 4 number
execute as @p[scores={weapon.use=1..}] run function weapon:range/skill/skill/damage/gold