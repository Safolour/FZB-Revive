scoreboard players add @s weapon.gun_shot 5
scoreboard players set color weapon.range 0
execute anchored eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {"Tags":["gun","resonance","chosen_new","resonance_proj"],"data":{"gun":"resonance","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/resonance/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {"Tags":["gun","resonance","chosen_new","resonance_proj"],"data":{"gun":"resonance","hits":[],"beam":1}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.1 ^0 ^1 run function weapon:range/gun/gun/resonance/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {"Tags":["gun","resonance","chosen_new","resonance_proj"],"data":{"gun":"resonance","hits":[],"beam":2}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.1 ^0 ^1 run function weapon:range/gun/gun/resonance/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {"Tags":["gun","resonance","chosen_new","resonance_proj"],"data":{"gun":"resonance","hits":[],"beam":3}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.2 ^0 ^1 run function weapon:range/gun/gun/resonance/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes positioned ^ ^ ^1 run summon marker ^ ^ ^ {"Tags":["gun","resonance","chosen_new","resonance_proj"],"data":{"gun":"resonance","hits":[],"beam":4}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.2 ^0 ^1 run function weapon:range/gun/gun/resonance/loop
tag @e[tag=chosen_new] remove chosen_new
