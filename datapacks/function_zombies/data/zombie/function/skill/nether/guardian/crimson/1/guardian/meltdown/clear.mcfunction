
execute unless score round game.state matches 40 run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run playsound item.trident.return record @a ~ ~ ~ 1 1

execute as @e[type=elder_guardian,tag=skill.crimsonguardian.meltdown] at @s run function system:death

kill @e[type=armor_stand,tag=skill.crimsonguardian.meltdown]
