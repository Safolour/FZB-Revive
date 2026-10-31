
tag @s remove breaking

execute if entity @s[tag=facing_north] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @e[type=item,dx=2,dy=2,dz=6,tag=powerup] add window.target1
execute if entity @s[tag=facing_south] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @e[type=item,dx=2,dy=2,dz=-6,tag=powerup] add window.target1
execute if entity @s[tag=facing_west] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @e[type=item,dx=6,dy=2,dz=2,tag=powerup] add window.target1
execute if entity @s[tag=facing_east] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @e[type=item,dx=-6,dy=2,dz=2,tag=powerup] add window.target1

tp @e[type=item,tag=powerup,tag=window.target1] ^ ^ ^1
tag @e[tag=window.target1] remove window.target1
tag @s add chosen
execute if entity @s[tag=facing_north] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @a[dx=2,dy=2,dz=1,tag=repairable,gamemode=!creative,gamemode=!spectator] add window.target
execute if entity @s[tag=facing_south] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @a[dx=2,dy=2,dz=-1,tag=repairable,gamemode=!creative,gamemode=!spectator] add window.target
execute if entity @s[tag=facing_west] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @a[dx=1,dy=2,dz=2,tag=repairable,gamemode=!creative,gamemode=!spectator] add window.target
execute if entity @s[tag=facing_east] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @a[dx=-1,dy=2,dz=2,tag=repairable,gamemode=!creative,gamemode=!spectator] add window.target

tp @a[tag=window.target,tag=!debug,gamemode=!spectator] ^ ^-1 ^1
tag @a[tag=window.target] remove window.target

execute if entity @s[tag=facing_north] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @e[dx=2,dy=2,dz=1,tag=window_break] add window.target0
execute if entity @s[tag=facing_south] as @s at @s positioned ~-1.5 ~ ~-0.5 run tag @e[dx=2,dy=2,dz=-1,tag=window_break] add window.target0
execute if entity @s[tag=facing_west] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @e[dx=1,dy=2,dz=2,tag=window_break] add window.target0
execute if entity @s[tag=facing_east] as @s at @s positioned ~-0.5 ~ ~-1.5 run tag @e[dx=-1,dy=2,dz=2,tag=window_break] add window.target0

tag @e[tag=window.target0] add breaking0
execute if entity @e[tag=window.target0] run tag @s add breaking
execute if score @s window.piece matches 0 run tag @s remove chosen
execute if score @s window.piece matches 0 run return run tag @e[tag=window.target0] remove window.target0

execute unless entity @e[tag=window.target0] run scoreboard players set @s window.timer 0

execute if entity @e[tag=window.target0] run scoreboard players add @s window.timer 1
execute if score @s window.timer >= break window.timer as @e[tag=window.target0] run scoreboard players remove @n[type=marker,tag=chosen] window.piece 1
execute if score @s window.timer >= break window.timer run scoreboard players set @s window.timer 0

tag @s remove chosen
tag @e[tag=window.target0] remove window.target0
