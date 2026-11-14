# Preserve damage awaiting the normal zombie tick; only repair position/AI here.
tp @s 17.5 -59 852.5 180 0
data merge entity @s {NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,Motion:[0d,0d,0d]}
tag @s remove path
tag @s remove pathfinding
scoreboard players set @s path.tp_binding 0
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
# Only missing initialization is repaired here. Pending damage, even lethal,
# must be consumed by mob_tick / hit rather than erased by the position guard.
execute unless score @s zombie.health = @s zombie.health run function mainlobby:setting/dummy/init

