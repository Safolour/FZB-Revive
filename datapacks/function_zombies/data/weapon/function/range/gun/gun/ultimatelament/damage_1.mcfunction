tag @p[scores={weapon.use=1..}] add crit_hit

# 本轮命中数：一发子弹（不管打到几个敌人）只算一次（#hit_counted 由 loop/0 每发子弹开头清零）
execute unless entity @s[tag=skill.firelord.shield] unless entity @s[type=marker,tag=skill.creation.rampart.shield] unless score #hit_counted weapon.state matches 1 run scoreboard players add @p[scores={weapon.use=1..}] weapon.gun_ultimatelament_hit 1
scoreboard players operation punch weapon.state = punch weapon.gun_ultimatelament
scoreboard players operation damage weapon.state = damage weapon.gun_ultimatelament
# lore「额外伤害 3x」：对火焰僵尸和恶魂三倍伤害（恶魂全系都带 firezb，第二个条件只是兜底，不会叠加）
execute if entity @s[tag=firezb] run scoreboard players operation damage weapon.state *= 3 number
execute if entity @s[type=ghast,tag=!firezb] run scoreboard players operation damage weapon.state *= 3 number
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimatelament
function weapon:range/gun/damage/damage

tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
