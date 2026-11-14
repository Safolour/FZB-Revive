
scoreboard players set enemy_count weapon.state 0
scoreboard players set #p5_ray_count weapon.state 0

scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.lightningrod_timer = cooldown weapon.range.skill.lightningrod
# 闪电子弹：冷却 20 → 5 秒
execute if entity @p[scores={weapon.use=1..,perk.lightning_bullet=1}] run scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.lightningrod_timer = cooldown_perk weapon.range.skill.lightningrod
# 先记下落点：下面的伤害可能把命中的怪打死，之后还要在落点落雷
execute at @s run summon marker ~ ~ ~ {Tags:["lightningrod_strike","lightningrod_strike_new"]}
execute at @s as @e[tag=mob,tag=hitable,distance=..5] at @s run function weapon:range/skill/skill/lightningrod/damage
# 自定义群伤已在上面结算；落雷只保留视听表现，避免额外伤害和点燃寻路载体。
execute at @e[tag=lightningrod_strike_new] run function weapon:range/skill/skill/lightningrod/visual
kill @e[tag=lightningrod_strike]

execute if score enemy_count weapon.state matches 1 run function weapon:range/skill/skill/lightningrod/hit0 with entity @s data
execute if score enemy_count weapon.state matches 2.. run tellraw @p[scores={weapon.use=1..}] [{translate:zb.item.skill.lightningrod.tellraw.1,with:[{score:{name:enemy_count,objective:weapon.state},color:yellow},{translate:zb.item.skill.tellraw.lightningrod.0}]}]
scoreboard players operation gold weapon.state = gold weapon.range.skill.lightningrod
function mainlobby:setting/powerup/select_attack
execute if score #instakill setting.pu matches 1.. if entity @s[tag=!cantinstakill] run scoreboard players operation gold weapon.state = instakill_gold weapon.state
execute if score #doublegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 2 number
execute if score #triplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 3 number
execute if score #quadruplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 4 number
execute unless score #p5_ray_count weapon.state matches 1.. as @p[scores={weapon.use=1..}] run function weapon:range/skill/skill/damage/gold
execute if score #p5_ray_count weapon.state matches 1.. if score enemy_count weapon.state matches 1.. as @p[scores={weapon.use=1..}] run function weapon:range/skill/skill/damage/gold
