scoreboard players operation match zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match
execute as @e[type=armor_stand,tag=skill.warpedguardian.labyrinth.1] if score @s zombie.nether.guardian.labyrinth.match = match zombie.nether.guardian.labyrinth.match run tag @s add target
kill @e[type=armor_stand,tag=target]
scoreboard players reset match zombie.nether.guardian.labyrinth.match
function system:death

playsound item.trident.thunder record @a ~ ~ ~ 10 0
playsound block.end_gateway.spawn record @a ~ ~ ~ 3 1
playsound block.end_gateway.spawn record @a ~ ~ ~ 3 1
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 3 0

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.3 50 force @a[scores={particle=0}]

summon lightning_bolt ~ ~ ~

execute if score stat zombie.nether.guardian matches 3 positioned ~ 88.2 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/impact
execute if score stat zombie.nether.guardian matches 5 positioned ~ 84.2 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/impact
execute if score stat zombie.nether.guardian matches 7 positioned ~ 88.2 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/impact
