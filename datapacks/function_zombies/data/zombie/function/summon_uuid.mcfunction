

scoreboard players add zombie.uuid zombie.uuid 1
scoreboard players operation @s zombie.uuid = zombie.uuid zombie.uuid
return fail
scoreboard players set @s zombie.uuid 0
scoreboard players add @e[tag=path,tag=!chosen] zombie.uuid 1
scoreboard players add @e[tag=mob,tag=!path,tag=!chosen] zombie.uuid 1
scoreboard players add @e[tag=mob.skill,tag=!chosen] zombie.uuid 1