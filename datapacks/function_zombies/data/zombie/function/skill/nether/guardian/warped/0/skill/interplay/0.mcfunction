tag @s add skill.warpedguardian.interplay.perseverant
tag @s remove skill.warpedguardian.interplay.weekness

data merge entity @n[type=armor_stand,tag=skill.warpedguardian.interplay.display] {CustomName:{"translate":"zb.zombie.guardian.interplay.0","color":"#ff7f7f"}}

scoreboard players set @s[tag=!skill.warpedguardian.shield] zombie.armor 50
