
execute if score @s window.piece matches 6 run return fail

execute if entity @s[tag=facing_north] as @s at @s positioned ~-1.5 ~-1 ~-1.5 run tag @a[scores={stat.player=1},dx=2,dy=2,dz=0,tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_south] as @s at @s positioned ~-1.5 ~-1 ~0.5 run tag @a[scores={stat.player=1},dx=2,dy=2,dz=0,tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_west] as @s at @s positioned ~-1.5 ~-1 ~-1.5 run tag @a[scores={stat.player=1},dx=0,dy=2,dz=2,tag=repairable,gamemode=!creative,gamemode=!spectator] add target
execute if entity @s[tag=facing_east] as @s at @s positioned ~0.5 ~-1 ~-1.5 run tag @a[scores={stat.player=1},dx=0,dy=2,dz=2,tag=repairable,gamemode=!creative,gamemode=!spectator] add target

scoreboard players set @s window 1

scoreboard players set @a[tag=target] window0 1
execute if entity @s[tag=breaking] run tellraw @a[tag=target,scores={window=-1},predicate=map:is_sneaking] [{translate:"zb.window.6"}]
execute if entity @s[tag=breaking] run scoreboard players set @a[tag=target,scores={window=-1},predicate=map:is_sneaking] window 0
execute if entity @s[tag=breaking] run scoreboard players set @a[tag=target,scores={window=0},predicate=!map:is_sneaking] window -1
execute if entity @s[tag=breaking] run return run tag @a[tag=target] remove target

scoreboard players set @a[tag=target,scores={system.actionbar=4..}] system.actionbar 4
scoreboard players set @a[tag=target,scores={window=-1}] window 0
scoreboard players set @p[tag=target,predicate=map:is_sneaking,scores={window=0}] window 1

title @a[tag=target,predicate=!map:is_sneaking,gamemode=!spectator,scores={system.actionbar=4}] actionbar [{translate:"zb.window.1"}]
tellraw @a[tag=target,predicate=map:is_sneaking,gamemode=!spectator,scores={window=1}] [{translate:"zb.window.2"}]


execute if entity @p[tag=target,predicate=map:is_sneaking] run return run tag @a[tag=target] remove target
tag @a[tag=target] remove target
scoreboard players set @s window 0