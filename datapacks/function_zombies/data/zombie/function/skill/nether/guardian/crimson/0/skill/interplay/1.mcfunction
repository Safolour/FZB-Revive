tag @s add skill.crimsonguardian.interplay.weekness
tag @s remove skill.crimsonguardian.interplay.perseverant

data merge entity @n[type=armor_stand,tag=skill.crimsonguardian.interplay.display] {CustomName:{"translate":"zb.zombie.guardian.interplay.1","color":"#7fffcc"}}

scoreboard players set @s[tag=!skill.crimsonguardian.shield] zombie.armor 0
