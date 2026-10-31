
$execute unless score $(powerup) round matches 1 run return fail
$execute if score debug_powerup round matches 1 run say =    $(powerup) detected
$execute as @e[type=marker,tag=spawner,limit=1,sort=random] at @s as @n[tag=mob,tag=!powerup] run function map:round/next_wave/4_0 {powerup:$(powerup)}
