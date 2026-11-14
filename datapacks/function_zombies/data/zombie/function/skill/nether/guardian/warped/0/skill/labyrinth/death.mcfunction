
scoreboard players operation match zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match
execute as @e[type=armor_stand,tag=skill.warpedguardian.labyrinth.1] if score @s zombie.nether.guardian.labyrinth.match = match zombie.nether.guardian.labyrinth.match run tag @s add target
kill @e[type=armor_stand,tag=target]
scoreboard players reset match zombie.nether.guardian.labyrinth.match

playsound block.end_gateway.spawn record @a ~ ~ ~ 3 1
playsound block.end_gateway.spawn record @a ~ ~ ~ 3 1
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 3 0

function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/death

execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 5 force @a[scores={particle=1}]

#execute as @a[scores={stat.player=1}] at @s run particle heart ~ ~1 ~ 0.2 0.2 0.2 0 3 force @a
#execute as @a[scores={stat.player=1}] at @s run playsound entity.player.levelup record @s ~ ~ ~ 2 2
