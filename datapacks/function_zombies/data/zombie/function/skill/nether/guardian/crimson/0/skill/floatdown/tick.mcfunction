scoreboard players add @s zombie.nether.guardian.floatdown 1

execute if score @s zombie.nether.guardian.floatdown matches 31 run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0
execute if score @s zombie.nether.guardian.floatdown matches 41 run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/particle/0

execute if score @s zombie.nether.guardian.floatdown matches 40 run tag @s remove bossbar

execute if score @s zombie.nether.guardian.floatdown matches 31..35 as @n[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~0.1 ~
execute if score @s zombie.nether.guardian.floatdown matches 36.. as @n[type=armor_stand,tag=skill.crimsonguardian.match] at @s run tp @s ~ ~-0.2 ~

execute if score @s zombie.nether.guardian.floatdown matches 60.. run function zombie:skill/nether/guardian/crimson/0/skill/floatdown/end
