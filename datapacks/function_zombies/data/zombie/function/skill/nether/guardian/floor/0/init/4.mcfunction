summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.crimsonguardian"}],color:"#dc143c"}
#tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.warpedguardian"}],color:"#008b8b"}

execute as @e[type=marker,tag=skill.guardian.floor.platform.0,tag=target0] at @s run function zombie:skill/nether/guardian/crimson/0/init

kill @e[type=marker,tag=skill.guardian.floor.platform.0]
