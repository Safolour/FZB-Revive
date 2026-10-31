tag @s add skill.crimsonguardian.interplay.perseverant
tag @s remove skill.crimsonguardian.interplay.weekness

data merge entity @n[type=armor_stand,tag=skill.crimsonguardian.interplay.display] {CustomName:{"translate":"zb.zombie.guardian.interplay.0","color":"#ff7f7f"}}

scoreboard players set @s[tag=!skill.crimsonguardian.shield] zombie.armor 50
