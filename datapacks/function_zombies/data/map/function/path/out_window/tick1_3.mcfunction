
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[tag=path,tag=!pathfinding] if score @s zombie.uuid = uuid zombie.uuid run scoreboard players set @s path.tp_binding 2