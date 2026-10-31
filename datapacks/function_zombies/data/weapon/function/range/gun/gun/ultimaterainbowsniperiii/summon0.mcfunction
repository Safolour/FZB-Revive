
scoreboard players add @s weapon.gun_shot 1
scoreboard players set penetrable weapon.state 4
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","ultimaterainbowsniperiii"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/ultimaterainbowsniperiii/loop
kill @e[type=marker,tag=chosen]