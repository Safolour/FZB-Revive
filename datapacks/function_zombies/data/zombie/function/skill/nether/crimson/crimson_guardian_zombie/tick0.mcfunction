scoreboard players add @s zombie.nether.crimson.crimsonguardianzombie.skill_timer 1
playsound entity.firework_rocket.blast record @a ~ ~ ~ 1 2
execute at @s run particle trial_spawner_detection ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]

execute at @s positioned ^ ^-1 ^ if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^ if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^1 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^1 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^2 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^2 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^3 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^3 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^4 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^4 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^5 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^5 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

execute at @s positioned ^ ^-1 ^6 if entity @a[scores={stat.player=1},distance=..0.99] as @a[scores={stat.player=1},distance=..0.99] run function zombie:skill/nether/crimson/crimson_guardian_zombie/damage
execute at @s positioned ^ ^-1 ^6 if entity @e[tag=mob,tag=firezb,distance=..0.99,tag=!skill.crimsonguardianzombie] as @e[tag=mob,tag=firezb,distance=..0.99] run function zombie:skill/nether/reaction/mob/crimson

scoreboard players set @s zombie.nether.crimson.crimsonguardianzombie.particle 0
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser

execute at @s run particle trial_spawner_detection ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]

scoreboard players set @s zombie.nether.crimson.crimsonguardianzombie.particle 0
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser
function zombie:skill/nether/crimson/crimson_guardian_zombie/laser

scoreboard players reset @s zombie.nether.crimson.crimsonguardianzombie.particle
execute if score @s zombie.nether.crimson.crimsonguardianzombie.skill_timer matches 5.. run kill @s
