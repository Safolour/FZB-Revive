tag @s remove titan.eclipse.cast
tag @s add titan.eclipse.complete
scoreboard players set @s zombie.health 37500
scoreboard players set @s zombie.health0 37500
tag @s add hitable
data merge entity @s {NoAI:0b,NoGravity:0b,Invulnerable:0b,Glowing:0b,Motion:[0d,0d,0d]}
execute if entity @s[team=titan.dark_red] run team join mob @s
