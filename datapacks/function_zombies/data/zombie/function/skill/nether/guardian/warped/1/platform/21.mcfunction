
fill 283 84 130 317 84 172 air replace lava

#say end
#schedule function zombie:skill/nether/guardian/warped/1/end 10s

tag @e[type=marker,tag=skill.guardian.floor.platform.marker.target1] add skill.guardian.floor.platform.marker.clear

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.suspense.tellraw.1"}


schedule function zombie:skill/nether/guardian/warped/1/platform/22 5s

schedule clear zombie:skill/nether/guardian/floor/lava/down/0
function zombie:skill/nether/guardian/floor/lava/down/0
