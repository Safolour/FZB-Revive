# 毁灭激光充能：每颗弹每打中一个敌人 +1
execute if entity @s[tag=hit] run scoreboard players add @p[scores={weapon.use=1..}] weapon.function_charge 1
execute if entity @s[tag=hit] as @p[scores={weapon.use=1..}] if score @s weapon.function_charge matches 1001.. run scoreboard players set @s weapon.function_charge 1000

execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/function/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/function/damage_2
