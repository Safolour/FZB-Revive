
scoreboard players add @s weapon.gun_shot 1
execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["chosen","gun","rocketlauncher","projectile","moving"],item:{id:"fire_charge"},billboard:"center"}
execute as @n[type=item_display,tag=chosen] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/rocketlauncher/loop