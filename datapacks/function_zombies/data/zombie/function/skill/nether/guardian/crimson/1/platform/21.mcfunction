
fill 287 88 130 313 88 172 air replace lava

#schedule function zombie:skill/nether/guardian/warped/0/init 20s

tag @e[type=marker,tag=skill.guardian.floor.platform.marker.target1] add skill.guardian.floor.platform.marker.clear

schedule function zombie:skill/nether/guardian/crimson/1/platform/22 5s

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.suspense.tellraw.1"}

schedule clear zombie:skill/nether/guardian/floor/lava/down/0
function zombie:skill/nether/guardian/floor/lava/down/0
