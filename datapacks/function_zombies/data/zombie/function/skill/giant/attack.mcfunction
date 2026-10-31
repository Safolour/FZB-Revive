execute if entity @s[tag=skill.giant,tag=!skill.lasrgiant,tag=!skill.diamondgiant] on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage

execute if entity @s[tag=skill.rgbgiant] run return run execute on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage_rgb
execute if entity @s[tag=skill.mutategiant] run return run execute on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage_mutate

execute if entity @s[tag=skill.lasrgiant] on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage_lasr
execute if entity @s[tag=skill.diamondgiant] on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage_diamond
execute if entity @s[tag=skill.rainbowgiant] on target if entity @s[scores={stat.player=1},distance=..5] run function zombie:skill/giant/damage_rainbow

