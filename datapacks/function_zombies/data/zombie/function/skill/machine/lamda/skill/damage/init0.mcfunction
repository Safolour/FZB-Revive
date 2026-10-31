execute unless entity @s[tag=skill.lamda.damage] run function zombie:skill/machine/lamda/skill/damage/init1

particle large_smoke ~ ~1.2 ~ 0 0 0 0.3 10 force @a[scores={particle=0}]
particle block{block_state:iron_block} ~ ~1.2 ~ 0.5 0.5 0.5 0.5 30 force @a[scores={particle=0..1}]

playsound entity.player.hurt record @a ~ ~ ~ 2 1
