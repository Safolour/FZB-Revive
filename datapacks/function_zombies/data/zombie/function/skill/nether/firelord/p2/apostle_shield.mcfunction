data merge entity @s {Invulnerable:1b}
execute if score @s zombie.health0 = @s zombie.health0 run scoreboard players operation @s zombie.health = @s zombie.health0
tag @s add hitable
execute unless entity @e[type=marker,tag=firelord.p2.linktarget] positioned ~ ~5 ~ run summon marker ~ ~ ~ {Tags:["mob.skill","firelord.p2.linktarget"]}
execute positioned ~ ~5 ~ run tp @e[type=marker,tag=firelord.p2.linktarget,limit=1] ~ ~ ~
execute as @e[type=zombie,tag=firelord.p2.golem,scores={zombie.health=1..}] at @s positioned ~ ~1.7 ~ facing entity @e[type=marker,tag=firelord.p2.linktarget,limit=1] feet run function zombie:skill/nether/firelord/p2/link_start
