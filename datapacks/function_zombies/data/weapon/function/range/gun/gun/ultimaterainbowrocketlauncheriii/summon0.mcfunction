scoreboard players add @s weapon.gun_shot 1
scoreboard players set color weapon.range 0
scoreboard players add palette weapon.range 1
scoreboard players operation palette weapon.range %= 7 number
scoreboard players operation color weapon.range = palette weapon.range
execute anchored eyes run summon item_display ^ ^ ^ {"Tags":["gun","ultimaterainbowrocketlauncheriii","chosen_new","rainbowrocketlauncher_proj"],"item":{"id":"minecraft:fire_charge","count":1},"billboard":"center"}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/loop
tag @e[tag=chosen_new] remove chosen_new
