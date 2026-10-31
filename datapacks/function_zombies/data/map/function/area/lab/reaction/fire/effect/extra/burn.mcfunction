
scoreboard players operation @s stat.burn_timer = default.burn stat.burn
execute at @s run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute at @s run playsound block.lava.extinguish ambient @a
