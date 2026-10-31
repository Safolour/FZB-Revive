#scoreboard players add @s zombie.nether.guardian.floatdown 1

#execute if score @s zombie.nether.guardian.floatdown matches 30.. run function zombie:skill/nether/guardian/crimson/0/skill/floatdown/end

#tp @s ~ ~0.1 ~

#execute store result score y zombie.nether.guardian run data get entity @s Pos[1] 10
#execute if score y zombie.nether.guardian matches 912.. as @n[type=guardian,tag=skill.crimsonguardian] run function zombie:skill/nether/guardian/crimson/0/skill/floatup/end
#scoreboard players reset y zombie.nether.guardian
