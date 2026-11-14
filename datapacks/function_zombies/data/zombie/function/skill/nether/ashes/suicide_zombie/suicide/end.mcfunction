scoreboard players operation #suicide.ring zombie.uuid = @s zombie.uuid
execute as @e[type=item_display,tag=skill.suicidezombie.ring] if score @s zombie.uuid = #suicide.ring zombie.uuid run kill @s
execute as @e[tag=mob,tag=firezb,distance=..3] run function zombie:skill/nether/reaction/mob/ashes

summon lightning_bolt
summon lightning_bolt

execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute if predicate zombie:firelord_medium_particle run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]

playsound entity.mule.death record @a ~ ~ ~ 2 0

execute if entity @a[scores={stat.player=1},distance=..3,gamemode=adventure] as @a[scores={stat.player=1},distance=..3,gamemode=adventure] at @s run function zombie:skill/nether/ashes/suicide_zombie/suicide/damage

function system:death
