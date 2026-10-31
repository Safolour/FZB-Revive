
execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","gyrokineticwand"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/skill/skill/gyrokineticwand/loop
kill @e[type=marker,tag=chosen]