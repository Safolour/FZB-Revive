# Executor: target. Call AFTER zombie:take_damage0 calculates damage zombie.health
# and synchronizes zombie.health0. Never count healing or the health refill.
execute unless score damage zombie.health matches 1.. run return 0
scoreboard players operation #damage setting.dps = damage zombie.health
tag @a[tag=setting.dps.source] remove setting.dps.source
# A burn has an explicit source on the target. It must take priority over any
# active gun/skill and must not replace the last direct-hit owner.
execute if entity @s[tag=setting.dps.flame] run scoreboard players operation #owner setting.dps_owner = @s perk.owner
execute if entity @s[tag=setting.dps.flame] as @a[scores={system.room=2},distance=..64] if score @s uuid = #owner setting.dps_owner run tag @s add setting.dps.source
# Immediate damage uses the same active attacker marker as the weapon system.
execute unless entity @s[tag=setting.dps.flame] run tag @p[scores={system.room=2,weapon.use=1..},distance=..64] add setting.dps.source
# Self-explosion marks its real source explicitly but does not set weapon.use.
execute unless entity @s[tag=setting.dps.flame] unless entity @a[tag=setting.dps.source] run tag @p[tag=perk_exploder,scores={system.room=2},distance=..64] add setting.dps.source
execute unless entity @s[tag=setting.dps.flame] if entity @a[tag=setting.dps.source] run scoreboard players operation @s setting.dps_owner = @p[tag=setting.dps.source] uuid
# Delayed / DOT damage is credited to the target's last direct attacker.
execute unless entity @s[tag=setting.dps.flame] run scoreboard players operation #owner setting.dps_owner = @s setting.dps_owner
execute unless entity @s[tag=setting.dps.flame] unless entity @a[tag=setting.dps.source] as @a[scores={system.room=2},distance=..64] if score @s uuid = #owner setting.dps_owner run tag @s add setting.dps.source
execute as @a[tag=setting.dps.source] run function mainlobby:setting/dummy/credit
tag @a[tag=setting.dps.source] remove setting.dps.source
# Refill before the caller's lethal-health checks; do not change damage globals.
scoreboard players set @s zombie.health 1000000000
scoreboard players set @s zombie.health0 1000000000
data modify entity @s Health set value 1024f

