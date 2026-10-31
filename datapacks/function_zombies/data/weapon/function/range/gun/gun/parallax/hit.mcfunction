# 蓝束和红束对非首领无视击退抗性，首领保留自身抗性。
scoreboard players set #parallax_kb weapon.state 0
execute if entity @s[tag=!bossbar] run scoreboard players operation #parallax_kb weapon.state = @s zombie.knockresistance
execute if entity @s[tag=!bossbar] run scoreboard players set @s zombie.knockresistance 0
# 红色（潜行）：先削甲，这一下就按削完的护甲结算
execute if score #parallax_mode weapon.state matches 1 run function weapon:range/gun/gun/parallax/armor
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/parallax/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/parallax/damage_2
execute if entity @s[tag=!bossbar] run scoreboard players operation @s zombie.knockresistance = #parallax_kb weapon.state
