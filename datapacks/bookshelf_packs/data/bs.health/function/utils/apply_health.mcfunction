
scoreboard players reset @s bs.hmod
$attribute @s max_health modifier add bs.health:limit $(y) add_value
effect give @s health_boost 1 0 true
effect clear @s health_boost
attribute @s max_health modifier remove bs.health:limit
data remove storage bs:ctx y 