# Shared baseline from map:game/start0. This does not join or reset a match.
scoreboard players operation @s health.heal_speed = basic health.heal_speed
effect give @s saturation infinite 0 true
effect give @s resistance infinite 4 true
effect give @s mining_fatigue infinite 2 true
attribute @s burning_time base set 0
