
#say purification

effect clear @s slowness
effect clear @s wither
scoreboard players set @s stat.burn_timer 0

execute at @s run playsound entity.zombie_villager.cure ambient @a ~ ~ ~ 1 2
execute unless score round game.state matches 40 run execute at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
