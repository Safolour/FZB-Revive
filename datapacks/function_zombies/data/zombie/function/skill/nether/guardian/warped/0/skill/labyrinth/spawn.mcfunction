function zombie:skill/nether/guardian/warped/0/skill/labyrinth/clear

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.labyrinth.spawn.0"]}
scoreboard players add @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.0] zombie.nether.guardian.labyrinth.match 1
summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.labyrinth.spawn.0"]}
scoreboard players add @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.0] zombie.nether.guardian.labyrinth.match 1
summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.labyrinth.spawn.0","skill.warpedguardian.labyrinth.spawn.0.negative"]}
scoreboard players add @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.0] zombie.nether.guardian.labyrinth.match 1

execute as @e[type=marker,tag=spawner,tag=magma,limit=3,sort=random] at @s run summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.labyrinth.spawn.1","chosen"]}

scoreboard players set @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,limit=1,sort=random] zombie.nether.guardian.labyrinth.match 1
execute as @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] at @s run tp @s ~ ~5 ~
tag @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] remove chosen

scoreboard players set @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,limit=1,sort=random] zombie.nether.guardian.labyrinth.match 2
execute as @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] at @s run tp @s ~ ~7 ~
tag @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] remove chosen

scoreboard players set @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,limit=1,sort=random] zombie.nether.guardian.labyrinth.match 3
execute as @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] at @s run tp @s ~ ~9 ~
tag @e[type=marker,tag=skill.warpedguardian.labyrinth.spawn.1,tag=chosen,scores={zombie.nether.guardian.labyrinth.match=1..}] remove chosen

particle end_rod ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

playsound entity.ghast.warn record @a ~ ~ ~ 10 0

schedule function zombie:skill/nether/guardian/warped/0/skill/labyrinth/tellraw0 2s
