execute at @s positioned 0.0 0.0 0.0 anchored feet run summon marker ^ ^ ^1 {Tags:["paradox.unit"]}
execute store result score #vx weapon.pd_hit run data get entity @e[type=marker,tag=paradox.unit,limit=1] Pos[0] 10000
execute store result score #vy weapon.pd_hit run data get entity @e[type=marker,tag=paradox.unit,limit=1] Pos[1] 10000
execute store result score #vz weapon.pd_hit run data get entity @e[type=marker,tag=paradox.unit,limit=1] Pos[2] 10000
kill @e[type=marker,tag=paradox.unit]
