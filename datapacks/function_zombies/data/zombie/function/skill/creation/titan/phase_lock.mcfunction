execute if entity @s[tag=titan.eclipse.used] run return 0
function zombie:skill/creation/titan/cancel
tag @s remove titan.scatter.cast
tag @s add titan.eclipse.used
tag @s add titan.eclipse.cast
tag @s remove hitable
scoreboard players set @s zombie.health 37500
scoreboard players set @s zombie.health0 37500
scoreboard players set @s origin.phase_age -1
data merge entity @s {NoAI:1b,NoGravity:1b,Invulnerable:1b,Motion:[0d,0d,0d]}
scoreboard players set @s zombie.motionx 0
scoreboard players set @s zombie.motiony 0
scoreboard players set @s zombie.motionz 0
tp @s 348.5 92 135.5
function zombie:bossbar/if_health
