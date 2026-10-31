
execute if entity @s[type=player] run return run tp @n[type=armor_stand,tag=bar,scores={area.reaction.fire_bar=2..}] ~ ~3 ~
execute if entity @s[type=wither_skeleton] run return run tp @n[type=armor_stand,tag=bar,scores={area.reaction.fire_bar=2..}] ~ ~2.5 ~
execute if entity @s[nbt={IsBaby:1b}] run return run tp @n[type=armor_stand,tag=bar,scores={area.reaction.fire_bar=2..}] ~ ~1.5 ~
tp @n[type=armor_stand,tag=bar,scores={area.reaction.fire_bar=2..}] ~ ~2 ~