
execute as @e[type=guardian,tag=skill.crimsonguardian.suspense.1] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute as @e[type=guardian,tag=skill.crimsonguardian.suspense.1] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute as @e[type=guardian,tag=skill.crimsonguardian.suspense.1] at @s run playsound item.trident.return record @a ~ ~ ~ 1 1

execute as @e[type=guardian,tag=skill.crimsonguardian.suspense.1] at @s run function system:death

kill @e[type=armor_stand,tag=skill.crimsonguardian.suspense.1]
