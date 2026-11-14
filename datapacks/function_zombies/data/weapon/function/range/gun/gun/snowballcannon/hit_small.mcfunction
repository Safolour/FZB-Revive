
# 小雪球打到怪（执行者 = 被打的敌人）：单体伤害 damage_small，金钱为雪块的一半
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/snowballcannon/damage_small {gold:"gold_crit",crit:1}
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/snowballcannon/damage_small {gold:"gold",crit:0}
particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0.02 5 force @a[scores={gun.particle=0..1}]
