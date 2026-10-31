scoreboard players add @s weapon.gun_shot 1
execute anchored eyes run summon marker ^ ^ ^ {Tags:["gun","ultimateseason_summer","chosen_new"],data:{gun:"ultimateseason_summer",hits:[],beam:0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/gun/ultimateseason_summer/burst_loop
tag @e[tag=chosen_new] remove chosen_new
scoreboard players remove #burst weapon.state 1
execute if score #burst weapon.state matches 1.. run function weapon:range/gun/gun/ultimateseason_summer/burst_fire
