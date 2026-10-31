scoreboard players add @s weapon.gun_shot 5
scoreboard players set color weapon.range 0
execute store result score color weapon.range run random value 0..6
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimaterainbowshotgunii","chosen_new"],"data":{"gun":"ultimaterainbowshotgunii","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/ultimaterainbowshotgunii/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimaterainbowshotgunii","chosen_new"],"data":{"gun":"ultimaterainbowshotgunii","hits":[],"beam":1}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.1 ^0.1 ^1 run function weapon:range/gun/gun/ultimaterainbowshotgunii/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimaterainbowshotgunii","chosen_new"],"data":{"gun":"ultimaterainbowshotgunii","hits":[],"beam":2}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.1 ^-0.1 ^1 run function weapon:range/gun/gun/ultimaterainbowshotgunii/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimaterainbowshotgunii","chosen_new"],"data":{"gun":"ultimaterainbowshotgunii","hits":[],"beam":3}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.1 ^0.1 ^1 run function weapon:range/gun/gun/ultimaterainbowshotgunii/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimaterainbowshotgunii","chosen_new"],"data":{"gun":"ultimaterainbowshotgunii","hits":[],"beam":4}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.1 ^-0.1 ^1 run function weapon:range/gun/gun/ultimaterainbowshotgunii/loop
tag @e[tag=chosen_new] remove chosen_new
