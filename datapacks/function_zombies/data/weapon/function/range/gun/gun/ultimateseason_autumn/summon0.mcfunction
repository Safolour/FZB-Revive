scoreboard players add @s weapon.gun_shot 1
scoreboard players set color weapon.range 0
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimateseason_autumn","chosen_new"],"data":{"gun":"ultimateseason_autumn","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/ultimateseason_autumn/loop
tag @e[tag=chosen_new] remove chosen_new
