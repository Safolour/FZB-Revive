
summon marker 0 0 0 {Tags:["mob.skill","skill.crimsonguardian.move.particle"]}
$execute as @n[type=marker,tag=skill.crimsonguardian.move.particle] at @s run tp @s ~ ~ ~ $(left) ~
execute as @n[type=marker,tag=skill.crimsonguardian.move.particle] at @s run tp @s ^ ^ ^10
execute store result score left_x zombie.nether.guardian run data get entity @n[type=marker,tag=skill.crimsonguardian.move.particle] Pos[0] 100
execute store result score left_z zombie.nether.guardian run data get entity @n[type=marker,tag=skill.crimsonguardian.move.particle] Pos[2] 100
kill @e[type=marker,tag=skill.crimsonguardian.move.particle]

summon marker 0 0 0 {Tags:["mob.skill","skill.crimsonguardian.move.particle"]}
$execute as @n[type=marker,tag=skill.crimsonguardian.move.particle] at @s run tp @s ~ ~ ~ $(right) ~
execute as @n[type=marker,tag=skill.crimsonguardian.move.particle] at @s run tp @s ^ ^ ^10
execute store result score right_x zombie.nether.guardian run data get entity @n[type=marker,tag=skill.crimsonguardian.move.particle] Pos[0] 100
execute store result score right_z zombie.nether.guardian run data get entity @n[type=marker,tag=skill.crimsonguardian.move.particle] Pos[2] 100
kill @e[type=marker,tag=skill.crimsonguardian.move.particle]
