execute at @e[type=wither_skeleton,tag=firelord.p2.apostle,limit=1] run playsound entity.warden.sonic_charge hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
execute as @e[type=wither_skeleton,tag=firelord.p2.apostle,limit=1] run attribute @s minecraft:knockback_resistance base set 1
