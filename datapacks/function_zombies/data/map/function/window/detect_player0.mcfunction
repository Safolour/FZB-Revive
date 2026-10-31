
execute if score @s window.piece matches 6 run return run scoreboard players set @s window 0

execute if entity @s[tag=facing_north] as @s at @s positioned ~-1.5 ~-1 ~-1.5 run tag @p[dx=2,dy=2,dz=0,scores={window=1,stat.player=1},tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_south] as @s at @s positioned ~-1.5 ~-1 ~0.5 run tag @p[dx=2,dy=2,dz=0,scores={window=1,stat.player=1},tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_west] as @s at @s positioned ~-1.5 ~-1 ~-1.5 run tag @p[dx=0,dy=2,dz=2,scores={window=1,stat.player=1},tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_east] as @s at @s positioned ~0.5 ~-1 ~-1.5 run tag @p[dx=0,dy=2,dz=2,scores={window=1,stat.player=1},tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=breaking] run scoreboard players set @p[tag=target] window 0
execute if entity @s[tag=breaking] run tag @p[tag=target] remove target
execute if entity @s[tag=breaking] run return run scoreboard players set @s window 0

scoreboard players set @p[tag=target,predicate=map:is_sneaking] window 2

title @p[tag=target,predicate=map:is_sneaking] actionbar [{translate:"zb.window.1"}]
execute if score @p[tag=target,predicate=map:is_sneaking] window.timer >= repair window.timer run scoreboard players add @s window.piece 1
execute as @p[tag=target,predicate=map:is_sneaking] if score @s window.timer >= repair window.timer run scoreboard players set @s window.timer 0

execute if score @s window.piece0 < @s window.piece run tag @s add sound
execute if score @s window.piece0 < @s window.piece run function map:window/repair

execute if score @s window.piece matches 6 run scoreboard players set @p[tag=target,predicate=map:is_sneaking] window 0
execute if score @s window.piece matches 6 run playsound entity.zombie.attack_iron_door ambient @a ~ ~ ~ 1 2
execute if score @s window.piece matches 6 run tellraw @p[tag=target,predicate=map:is_sneaking] [{translate:"zb.window.4"}]

execute if entity @p[tag=target,predicate=map:is_sneaking] run return run tag @a[tag=target] remove target

execute as @p[tag=target,predicate=!map:is_sneaking] at @s run function map:window/leave_window
scoreboard players set @s window 0

tag @a[tag=target] remove target
