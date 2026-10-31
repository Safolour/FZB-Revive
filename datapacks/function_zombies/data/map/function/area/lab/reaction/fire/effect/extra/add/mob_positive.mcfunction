
effect give @s slowness 3 1 false
scoreboard players remove @s zombie.health 3

execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute at @s run playsound entity.player.hurt ambient @a
