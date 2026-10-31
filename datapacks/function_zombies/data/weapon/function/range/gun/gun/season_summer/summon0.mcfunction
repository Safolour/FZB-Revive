scoreboard players add @s weapon.gun_shot 1
scoreboard players set color weapon.range 0
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","season_summer","chosen_new"],"data":{"gun":"season_summer","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/season_summer/loop
tag @e[tag=chosen_new] remove chosen_new
