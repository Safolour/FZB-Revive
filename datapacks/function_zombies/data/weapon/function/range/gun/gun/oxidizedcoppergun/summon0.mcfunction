scoreboard players add @s weapon.gun_shot 10
scoreboard players set color weapon.range 0
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.0625 ^0 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:1}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.0625 ^0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:2}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^-0.0625 ^-0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:3}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^-0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:4}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^-0.03175 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:5}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0.03175 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:6}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:7}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.0625 ^0 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:8}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.0625 ^0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","oxidizedcoppergun"],data:{beam:9}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0.0625 ^-0.0625 ^1 run function weapon:range/gun/gun/oxidizedcoppergun/loop
tag @e[tag=chosen_new] remove chosen_new
effect give @s slowness 1 1 true
effect give @s blindness 1 0 true
