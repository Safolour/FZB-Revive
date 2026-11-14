
#say rotation

execute store result score random zombie.random run random value 0..3
execute at @s if score random zombie.random matches 0 run tp @s ~ ~ ~ ~8 ~
execute at @s if score random zombie.random matches 1 run tp @s ~ ~ ~ ~-8 ~
execute at @s if score random zombie.random matches 2 run tp @s ~ ~ ~ ~ ~8
execute at @s if score random zombie.random matches 3 run tp @s ~ ~ ~ ~ ~-8
scoreboard players reset random zombie.random

execute unless score round game.state matches 40 run execute at @s run particle sculk_soul ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle sculk_soul ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle sculk_soul ~ ~1 ~ 0.1 0.1 0.1 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute at @s run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 5 force @a[scores={particle=1}]
execute at @s run playsound entity.evoker.prepare_summon ambient @a ~ ~ ~ 1 2
#execute at @s run playsound entity.evoker.prepare_summon ambient @a ~ ~ ~ 1 2

effect give @s blindness 1 0 false
