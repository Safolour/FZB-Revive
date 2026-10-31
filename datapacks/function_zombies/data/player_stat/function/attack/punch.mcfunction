
execute unless score @s zombie.knockresistance = @s zombie.knockresistance run scoreboard players set @s zombie.knockresistance 0
scoreboard players operation punch0 stat.attack = punch stat.attack
execute if entity @p[scores={weapon.use=1..,perk.no_knockback=1}] run scoreboard players operation punch0 stat.attack *= punch perk.no_knockback
execute if entity @p[scores={weapon.use=1..,perk.no_knockback=1}] run scoreboard players operation punch0 stat.attack /= 100 number
execute at @s facing entity @p[scores={weapon.use=1..}] feet positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["summon"]}
execute store result score vector.x stat.attack run data get entity @n[tag=summon] Pos[0] 100
execute store result score vector.y stat.attack run data get entity @n[tag=summon] Pos[1] 100
execute store result score vector.z stat.attack run data get entity @n[tag=summon] Pos[2] 100
scoreboard players set @s zombie.knockresistance1 0
execute unless score uuid stat.attack matches 20002 unless score uuid stat.attack matches 20004 run scoreboard players operation @s zombie.knockresistance1 = @s zombie.knockresistance
scoreboard players operation @s zombie.knockresistance1 -= 100 number
scoreboard players operation punch0 stat.attack *= @s zombie.knockresistance1
scoreboard players operation vector.x stat.attack *= punch0 stat.attack
scoreboard players operation vector.y stat.attack *= punch0 stat.attack
scoreboard players operation vector.z stat.attack *= punch0 stat.attack
scoreboard players operation @s zombie.motionx = vector.x stat.attack
scoreboard players operation @s zombie.motiony = vector.y stat.attack
scoreboard players operation @s zombie.motionz = vector.z stat.attack
kill @e[type=marker,tag=summon]