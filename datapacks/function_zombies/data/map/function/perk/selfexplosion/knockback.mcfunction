# 执行者 = 被炸到的敌人：把它推离爆炸中心（写法同 player_stat:attack/punch，力度 #punch perk）
execute unless score @s zombie.knockresistance = @s zombie.knockresistance run scoreboard players set @s zombie.knockresistance 0
execute at @s facing entity @p[tag=perk_exploder] feet positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["summon"]}
execute store result score vector.x perk run data get entity @n[type=marker,tag=summon] Pos[0] 100
execute store result score vector.y perk run data get entity @n[type=marker,tag=summon] Pos[1] 100
execute store result score vector.z perk run data get entity @n[type=marker,tag=summon] Pos[2] 100
kill @e[type=marker,tag=summon]
scoreboard players operation @s zombie.knockresistance1 = @s zombie.knockresistance
scoreboard players operation @s zombie.knockresistance1 -= 100 number
scoreboard players operation #punch perk *= @s zombie.knockresistance1
scoreboard players operation vector.x perk *= #punch perk
scoreboard players operation vector.y perk *= #punch perk
scoreboard players operation vector.z perk *= #punch perk
scoreboard players operation @s zombie.motionx = vector.x perk
scoreboard players operation @s zombie.motiony = vector.y perk
scoreboard players operation @s zombie.motionz = vector.z perk
