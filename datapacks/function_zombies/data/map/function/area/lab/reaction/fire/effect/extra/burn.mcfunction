
scoreboard players operation @s stat.burn_timer = default.burn stat.burn
execute unless score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
execute at @s run playsound block.lava.extinguish ambient @a
