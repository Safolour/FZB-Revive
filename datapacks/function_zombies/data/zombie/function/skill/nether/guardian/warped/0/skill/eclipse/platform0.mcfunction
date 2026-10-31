#function zombie:skill/nether/guardian/crimson/0/skill/suspense/particle

execute if block ~ ~-1 ~ lava run summon marker ~ ~-1 ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.0","chosen"]}

execute if block ~1 ~-1 ~ lava run summon marker ~1 ~-1 ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
execute if block ~-1 ~-1 ~ lava run summon marker ~-1 ~-1 ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
execute if block ~ ~-1 ~1 lava run summon marker ~ ~-1 ~1 {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
execute if block ~ ~-1 ~-1 lava run summon marker ~ ~-1 ~-1 {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}

execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.0,tag=chosen] at @s run setblock ~ ~ ~ obsidian
execute as @e[type=marker,tag=skill.guardian.floor.platform.marker.1,tag=chosen] at @s run setblock ~ ~ ~ obsidian

#execute positioned ~ ~-1 ~ if entity @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] as @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] at @s run function zombie:skill/nether/guardian/floor/platform/break
#execute positioned ~1 ~-1 ~ if entity @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] as @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] at @s run function zombie:skill/nether/guardian/floor/platform/break
#execute positioned ~-1 ~-1 ~ if entity @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] as @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] at @s run function zombie:skill/nether/guardian/floor/platform/break
#execute positioned ~ ~-1 ~1 if entity @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] as @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] at @s run function zombie:skill/nether/guardian/floor/platform/break
#execute positioned ~ ~-1 ~-1 if entity @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] as @n[type=marker,distance=..1,tag=skill.guardian.floor.platform.marker,tag=!chosen] at @s run function zombie:skill/nether/guardian/floor/platform/break

tag @e[type=marker,tag=chosen] remove chosen
