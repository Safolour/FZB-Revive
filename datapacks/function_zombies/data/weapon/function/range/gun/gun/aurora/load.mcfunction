scoreboard objectives add weapon.gun_aurora dummy
scoreboard objectives add weapon.gun_aurora_ammo dummy
scoreboard objectives add weapon.gun_aurora_clip_ammo dummy
scoreboard objectives add weapon.gun_aurora_rate dummy
scoreboard objectives add weapon.gun_aurora_rate0 dummy
scoreboard objectives add weapon.gun_aurora_reload dummy
scoreboard objectives add weapon.gun_aurora_slot dummy
# Newest held-item evidence: 2026_09_29_20_26_37.mcpr, 2416497 ms. Hit rewards: PL 0.68 gun table.
scoreboard players set uuid weapon.gun_aurora 10051
scoreboard players set damage weapon.gun_aurora 400
scoreboard players set ammo weapon.gun_aurora 40
scoreboard players set clip_ammo weapon.gun_aurora 4
scoreboard players set rate weapon.gun_aurora 40
scoreboard players set reload weapon.gun_aurora 70
scoreboard players set range weapon.gun_aurora 2048
scoreboard players set gold weapon.gun_aurora 40
scoreboard players set gold_crit weapon.gun_aurora 70
scoreboard players set punch weapon.gun_aurora 200
scoreboard players set extrashot weapon.gun_aurora 0
scoreboard players set extrashot_time weapon.gun_aurora 5
scoreboard players set pierce weapon.gun_aurora 999999
scoreboard objectives add weapon.aurora_born dummy
scoreboard objectives add weapon.aurora_dist dummy
scoreboard objectives add weapon.aurora_steps dummy
scoreboard objectives add weapon.aurora_pierce dummy
scoreboard objectives add weapon.aurora_stop dummy

# Player position sampling and launch-speed snapshot (0.001 blocks/tick).
scoreboard objectives add weapon.aurora_x dummy
scoreboard objectives add weapon.aurora_y dummy
scoreboard objectives add weapon.aurora_z dummy
scoreboard objectives add weapon.aurora_speed dummy
scoreboard objectives add weapon.aurora_remainder dummy

# Classify already spawned enemies when the datapack reloads.
tag @e[type=ghast,tag=mob] add floating
tag @e[type=blaze,tag=mob] add floating
tag @e[tag=mob,tag=skill.disperse] add floating
tag @e[tag=mob,tag=skill.obviate] add floating
tag @e[type=guardian,tag=mob,tag=skill.crimsonguardian.suspense] add floating
tag @e[type=elder_guardian,tag=mob,tag=skill.crimsonguardian.suspense] add floating
tag @e[type=guardian,tag=mob,tag=skill.crimsonguardian.suspense.1] add floating
tag @e[type=elder_guardian,tag=mob,tag=skill.crimsonguardian.suspense.1] add floating
tag @e[type=guardian,tag=mob,tag=skill.twilightguardian] add floating
tag @e[type=elder_guardian,tag=mob,tag=skill.twilightguardian] add floating
tag @e[tag=mob,tag=skill.guardian] remove floating
