
scoreboard players operation match zombie.nether.guardian.labyrinth.match = @s zombie.nether.guardian.labyrinth.match
execute as @e[type=armor_stand,tag=skill.warpedguardian.labyrinth.1] if score @s zombie.nether.guardian.labyrinth.match = match zombie.nether.guardian.labyrinth.match run tag @s add target
tag @s add target

execute as @n[type=armor_stand,tag=target] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/up
function zombie:skill/nether/guardian/warped/0/skill/labyrinth/up

execute as @e[type=armor_stand,tag=!target,tag=skill.warpedguardian.labyrinth.1] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/down
execute as @e[type=slime,tag=!target,tag=skill.warpedguardian.labyrinth.0] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/down

tag @s remove target
tag @e[type=armor_stand,tag=target] remove target
scoreboard players reset match zombie.nether.guardian.labyrinth.match

execute unless score round game.state matches 40 run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]

playsound entity.wither.hurt record @a ~ ~ ~ 2 2
