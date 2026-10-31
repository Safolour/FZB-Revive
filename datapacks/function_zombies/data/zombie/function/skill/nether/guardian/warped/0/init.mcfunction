#say warped guardian init
function zombie:skill/nether/guardian/crimson/1/guardian/blaze/clear
function zombie:skill/nether/guardian/crimson/1/guardian/suspense/clear



summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.warpedguardian"}],color:"#008b8b"}


#spawnpoint
function zombie:skill/nether/guardian/floor/0/platform/spawn2
tag @e[type=marker,tag=skill.guardian.floor.platform.0,limit=1,sort=random] add skill.guardian.floor.platform.0.target
kill @e[type=marker,tag=skill.guardian.floor.platform.0,tag=!skill.guardian.floor.platform.0.target]

execute as @e[type=marker,tag=skill.guardian.floor.platform.0.target] at @s positioned ~ ~-4 ~ run function zombie:skill/nether/guardian/warped/0/spawn/0


execute as @n[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/0/skill/floatup/init

kill @e[type=marker,tag=skill.guardian.floor.platform.0]


scoreboard players set stat zombie.nether.guardian 3

function zombie:skill/nether/guardian/floor/eye/init
