execute anchored eyes run summon marker ^ ^ ^ {Tags:["chosen_new","ultimatesoulflamethrower"]}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/gun/ultimatesoulflamethrower/loop
tag @e[tag=chosen_new] remove chosen_new
scoreboard players remove #soul_count weapon.state 1
execute if score #soul_count weapon.state matches 1.. run function weapon:range/gun/gun/ultimatesoulflamethrower/summon1
