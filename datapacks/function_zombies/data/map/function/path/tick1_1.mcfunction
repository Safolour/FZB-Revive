
summon marker ~ ~ ~ {UUID:[I;1,1,1,1]}
execute if entity @e[type=skeleton,tag=way_point] on target at @s as 00000001-0000-0001-0000-000100000001 if entity @s[distance=..16] run return run kill 00000001-0000-0001-0000-000100000001
execute unless entity @e[type=skeleton,tag=way_point] on target at @s as 00000001-0000-0001-0000-000100000001 if entity @s[distance=..64] run return run kill 00000001-0000-0001-0000-000100000001
kill 00000001-0000-0001-0000-000100000001
tag @p[scores={stat.player=1},gamemode=!creative,gamemode=!spectator,distance=..16] add target
execute unless entity @e[type=skeleton,tag=way_point] run tag @p[scores={stat.player=1},gamemode=!creative,gamemode=!spectator,distance=..64] add target

execute unless entity @a[tag=target] if entity @e[type=skeleton,tag=way_point] run return run execute if entity @a[gamemode=!creative,gamemode=!spectator] run scoreboard players set @s path.summon 3

execute unless entity @a[tag=target] unless entity @e[type=skeleton,tag=way_point] run return fail

data modify entity @s Silent set value 1b
effect give @s resistance 1 4 true
attribute @s knockback_resistance modifier add knockback_resistance.0 447010 add_value
damage @s 1 mob_attack by @p[tag=target]
attribute @s knockback_resistance modifier remove knockback_resistance.0
effect clear @s resistance
execute if entity @s[tag=!silent] run data modify entity @s Silent set value 0b
tag @p[tag=target] remove target