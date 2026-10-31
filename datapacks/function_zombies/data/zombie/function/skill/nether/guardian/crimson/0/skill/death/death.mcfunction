summon lightning_bolt
summon lightning_bolt
summon lightning_bolt

playsound item.trident.thunder record @a ~ ~ ~ 10 0

particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]


execute unless entity @e[type=elder_guardian,tag=skill.warpedguardian] run function zombie:skill/nether/guardian/reset0
return 0
function zombie:skill/nether/guardian/reset
