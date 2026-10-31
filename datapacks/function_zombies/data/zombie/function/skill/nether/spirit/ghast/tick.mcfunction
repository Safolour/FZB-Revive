
execute if entity @s[tag=skill.spiritghast.falling] run return run function zombie:skill/nether/spirit/ghast/tick0
execute at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1},gamemode=adventure]

particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 1 force @a[scores={particle=0}]

scoreboard players add @s zombie.nether.spirit.ghast.skill_timer 1

execute if score @s zombie.nether.spirit.ghast.skill_timer matches ..50 run function zombie:skill/nether/spirit/ghast/random

execute if score @s zombie.nether.spirit.ghast.skill_timer matches 100 if entity @a[scores={stat.player=1},distance=..100] run playsound entity.ghast.warn record @a ~ ~ ~ 2 1
execute if score @s zombie.nether.spirit.ghast.skill_timer matches 115 if entity @a[scores={stat.player=1},distance=..100] run function zombie:skill/nether/spirit/ghast/shoot
execute if score @s zombie.nether.spirit.ghast.skill_timer matches 115 run scoreboard players set @s zombie.nether.spirit.ghast.skill_timer 0


scoreboard players add @s zombie.nether.spirit.ghast.skill_timer0 1
execute store result score random zombie.random run random value 0..5
execute if score random zombie.random matches 0 run scoreboard players add @s zombie.nether.spirit.ghast.skill_timer0 3
scoreboard players reset random zombie.random

execute if score @s zombie.nether.spirit.ghast.skill_timer0 matches 400.. run function zombie:skill/nether/spirit/ghast/falling
