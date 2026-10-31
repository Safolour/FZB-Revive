execute as @e[tag=mob,tag=firezb,distance=..3] run function zombie:skill/nether/reaction/mob/ashes

summon lightning_bolt
summon lightning_bolt

particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

playsound entity.mule.death record @a ~ ~ ~ 2 0

execute if entity @a[scores={stat.player=1},distance=..3,gamemode=adventure] as @a[scores={stat.player=1},distance=..3,gamemode=adventure] at @s run function zombie:skill/nether/ashes/suicide_zombie/suicide/damage

function system:death
