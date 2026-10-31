tag @s add skill.warpedguardian.interplay.weekness
tag @s remove skill.warpedguardian.interplay.perseverant

data merge entity @n[type=armor_stand,tag=skill.warpedguardian.interplay.display] {CustomName:{"translate":"zb.zombie.guardian.interplay.1","color":"#7fffcc"}}

scoreboard players set @s[tag=!skill.warpedguardian.shield] zombie.armor 0
