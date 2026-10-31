execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","function"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/spread
execute as @e[type=marker,tag=chosen,limit=1] at @s run function weapon:range/gun/gun/function/loop
kill @e[type=marker,tag=chosen]
