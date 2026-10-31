
scoreboard players add @s weapon.gun_shot 1
execute anchored eyes positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["chosen","snowballcannon"]}
execute anchored eyes positioned ^ ^ ^1 run summon item ~ ~ ~ {Tags:["chosen","gun","snowballcannon","projectile","bounce"],Item:{id:"snow_block",count:1b,components:{custom_data:{}}},Owner:[I;0,0,0,0],PickupDelay:32767s}
execute as @n[type=item,tag=chosen] at @s run function weapon:range/gun/gun/snowballcannon/loop
kill @e[type=marker,tag=chosen]