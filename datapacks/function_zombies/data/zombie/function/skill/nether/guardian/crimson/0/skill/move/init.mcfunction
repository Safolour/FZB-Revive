function zombie:skill/nether/guardian/crimson/0/skill/move/end

tag @s add skill.crimsonguardian.move

execute store result score blockcount zombie.nether.guardian if entity @e[type=marker,tag=skill.guardian.floor.platform.marker]

execute if score blockcount zombie.nether.guardian matches 80.. run tag @s add skill.crimsonguardian.move.swim
execute unless score blockcount zombie.nether.guardian matches 80.. run tag @s add skill.crimsonguardian.move.float

scoreboard players reset blockcount zombie.nether.guardian

#target position
function zombie:skill/nether/guardian/floor/0/platform/spawn
tag @e[type=marker,limit=1,tag=skill.guardian.floor.platform.0,sort=random,distance=10..] add skill.crimsonguardian.move.target

kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!skill.crimsonguardian.move.target]
tag @e[type=marker,tag=skill.crimsonguardian.move.target] remove skill.guardian.floor.platform.0

execute if entity @s[tag=skill.crimsonguardian.move.swim] at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/swim/init
execute if entity @s[tag=skill.crimsonguardian.move.float] at @s run function zombie:skill/nether/guardian/crimson/0/skill/move/float/init

scoreboard players add movecount zombie.nether.guardian 1
execute if score movecount zombie.nether.guardian matches 1 run function zombie:skill/nether/guardian/crimson/0/skill/move/tellraw
