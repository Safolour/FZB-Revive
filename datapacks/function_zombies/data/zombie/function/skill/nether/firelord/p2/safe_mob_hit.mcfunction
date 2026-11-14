scoreboard players set @s fl.safe.melee 0
execute store result score #shielddamage zombie.health run attribute @s minecraft:attack_damage get 10
execute if score #shielddamage zombie.health matches ..0 run scoreboard players set #shielddamage zombie.health 10
execute as @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1,distance=..5.4] at @s run function zombie:skill/nether/firelord/p2/safe_hit
execute facing entity @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1,distance=..5.4] feet rotated ~ 0 positioned ^ ^ ^-1 run tp @s ~ ~ ~
