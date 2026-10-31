
execute at @s facing entity 00000001-0000-0001-0000-000100000001 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {UUID:[I;1,1,1,2]}
execute store result entity @s Motion[0] float 0.00005 run data get entity 00000001-0000-0001-0000-000100000002 Pos[0] 10000
execute store result entity @s Motion[2] float 0.00005 run data get entity 00000001-0000-0001-0000-000100000002 Pos[2] 10000
kill 00000001-0000-0001-0000-000100000002
tag @s remove chosen