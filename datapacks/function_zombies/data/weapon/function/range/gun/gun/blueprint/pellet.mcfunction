execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen","blueprint"]}
execute as @e[type=marker,tag=chosen,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/spread
execute as @e[type=marker,tag=chosen,limit=1] run function weapon:range/gun/gun/blueprint/pellet_offset
execute as @e[type=marker,tag=chosen,limit=1] at @s run function weapon:range/gun/gun/blueprint/loop
kill @e[type=marker,tag=chosen]
scoreboard players remove #bp_n weapon.state 1
execute if score #bp_n weapon.state matches 1.. run function weapon:range/gun/gun/blueprint/pellet
