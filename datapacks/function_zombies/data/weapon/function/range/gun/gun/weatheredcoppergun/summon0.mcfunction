scoreboard players add @s weapon.gun_shot 8
scoreboard players set color weapon.range 0
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.0625 ^0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":1}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.0625 ^-0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":2}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.0625 ^0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":3}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.0625 ^-0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":4}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0.03175 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":5}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^-0.03175 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":6}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","weatheredcoppergun","chosen_new"],"data":{"gun":"weatheredcoppergun","hits":[],"beam":7}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^-0.0625 ^1 run function weapon:range/gun/gun/weatheredcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
