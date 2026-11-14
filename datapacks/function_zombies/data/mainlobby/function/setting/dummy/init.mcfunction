scoreboard players set @s zombie.health 1000000000
scoreboard players set @s zombie.health0 1000000000
# A standard 100 HP target for percentage-of-health effects. Current health is
# only a refillable accounting buffer, not the percentage-damage baseline.
scoreboard players set @s zombie.max_health 1000
scoreboard players set @s zombie.armor 0
scoreboard players set @s zombie.armor_init 0
scoreboard players set @s zombie.critical_extra 100
scoreboard players set @s perk.neutralization_base 1000
execute unless score @s zombie.uuid = @s zombie.uuid run function zombie:summon_uuid
scoreboard players set @s zombie.speed 0
scoreboard players set @s zombie.speed0 0
scoreboard players set @s zombie.speed1 0
scoreboard players set @s path.tp_binding 0
scoreboard players set @s path.in_window 0
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
tag @s remove path
tag @s remove pathfinding
team join mob @s

