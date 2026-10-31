
scoreboard players add @s weapon.gun_shot 1
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","ultimateairgun"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/ultimateairgun/loop
kill @e[type=marker,tag=chosen]