
scoreboard players add @s weapon.gun_shot 1
scoreboard players set penetrable weapon.state 2
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","ultimatesniper"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/ultimatesniper/loop
kill @e[type=marker,tag=chosen]