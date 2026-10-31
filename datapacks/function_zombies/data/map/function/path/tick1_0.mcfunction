
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[type=skeleton,tag=pathfinding] if score @s zombie.uuid = uuid zombie.uuid run scoreboard players set @s path.summon -1
scoreboard players set @n[type=skeleton,tag=pathfinding,scores={path.summon=-1,path.tp_order=1}] path.summon 2
scoreboard players set @n[type=skeleton,tag=pathfinding,scores={path.summon=-1,path.tp_order=2}] path.summon 2
execute as @e[type=skeleton,tag=pathfinding,scores={path.summon=-1}] run function system:death
execute unless entity @e[type=skeleton,tag=way_point] run scoreboard players set @s[scores={path.tp_binding=1}] path.tp_binding 2
execute at @s unless entity @e[type=skeleton,tag=pathfinding,scores={path.summon=2,path.tp_order=1},distance=..8] run scoreboard players set @s path.tp_binding 3
#execute at @s unless entity @e[type=skeleton,tag=pathfinding,scores={path.summon=2,path.tp_order=2},distance=..8] run scoreboard players set @s path.tp_binding 3
scoreboard players operation @e[type=skeleton,tag=pathfinding,scores={path.summon=2}] path.tp_binding = @s path.tp_binding
tp @s @n[type=skeleton,tag=pathfinding,scores={path.summon=2,path.tp_order=1}]
scoreboard players set @e[type=skeleton,tag=pathfinding,scores={path.summon=2}] path.summon 1

