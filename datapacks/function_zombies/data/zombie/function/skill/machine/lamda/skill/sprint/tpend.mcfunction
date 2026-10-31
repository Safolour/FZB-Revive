particle white_smoke ~ ~1.5 ~ 1 1 1 0.2 50 force @a[scores={particle=0}]
particle gust_emitter_large ~ ~1.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]

data merge entity @s {NoAI:0b}
playsound entity.evoker.prepare_summon record @a ~ ~ ~ 2 2
playsound block.end_portal.spawn record @a ~ ~ ~ 2 2

execute positioned ~ ~1 ~ run function zombie:skill/machine/lamda/skill/sprint/particle
execute positioned ~ ~0.5 ~ run function zombie:skill/machine/lamda/skill/sprint/particle
execute positioned ~ ~1.5 ~ run function zombie:skill/machine/lamda/skill/sprint/particle
