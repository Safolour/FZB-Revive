function zombie:skill/nether/guardian/warped/0/skill/move/end

tag @s add skill.warpedguardian.move

execute store result score blockcount zombie.nether.guardian if entity @e[type=marker,tag=skill.guardian.floor.platform.marker]

execute if score blockcount zombie.nether.guardian matches 60.. run tag @s add skill.warpedguardian.move.swim
execute unless score blockcount zombie.nether.guardian matches 60.. run tag @s add skill.warpedguardian.move.float

scoreboard players reset blockcount zombie.nether.guardian


execute store result score random zombie.random run random value 0..3
execute if score random zombie.random matches 0 run tag @s add skill.warpedguardian.move.swim.left
execute if score random zombie.random matches 1 run tag @s add skill.warpedguardian.move.swim.right
#execute if score random zombie.random matches 2..3 run say z
scoreboard players reset random zombie.random

#target position
function zombie:skill/nether/guardian/floor/0/platform/spawn2
tag @e[type=marker,limit=1,tag=skill.guardian.floor.platform.0,sort=random,distance=10..] add skill.warpedguardian.move.target

kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!skill.warpedguardian.move.target]
tag @e[type=marker,tag=skill.warpedguardian.move.target] remove skill.guardian.floor.platform.0

execute if entity @s[tag=skill.warpedguardian.move.swim] at @s run function zombie:skill/nether/guardian/warped/0/skill/move/swim/init
execute if entity @s[tag=skill.warpedguardian.move.float] at @s run function zombie:skill/nether/guardian/warped/0/skill/move/float/init

#scoreboard players add warpedmovecount zombie.nether.guardian 1
#execute if score warpedmovecount zombie.nether.guardian matches 1 run function zombie:skill/nether/guardian/warped/0/skill/move/tellraw
