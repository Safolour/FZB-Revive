scoreboard players add @s zombie.nether.guardian.missile 1

execute if score @s zombie.nether.guardian.missile matches 16 run tp @e[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.missile matches 36 run tp @e[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.missile matches 56 run tp @e[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~ ~ facing entity @p[scores={stat.player=1}]

execute if score @s zombie.nether.guardian.missile matches 20 run function zombie:skill/nether/guardian/crimson/0/skill/missile/shoot
execute if score @s zombie.nether.guardian.missile matches 40 run function zombie:skill/nether/guardian/crimson/0/skill/missile/shoot
execute if score @s zombie.nether.guardian.missile matches 60 run function zombie:skill/nether/guardian/crimson/0/skill/missile/shoot

execute if score @s zombie.nether.guardian.missile matches 70 run effect clear @s glowing

execute if score @s zombie.nether.guardian.missile matches 80.. run function zombie:skill/nether/guardian/crimson/0/skill/missile/end
