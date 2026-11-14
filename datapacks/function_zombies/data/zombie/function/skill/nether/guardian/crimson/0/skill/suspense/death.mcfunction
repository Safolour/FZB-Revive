
execute unless score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle gust ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=1}]

playsound entity.guardian.death record @a ~ ~ ~ 1.5 1


execute as @p[scores={weapon.use=1..}] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/player
#say as player at @s   function zombie:skill/nether/guardian/crimson/0/skill/suspense/player

function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 5 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
execute if score stat zombie.nether.guardian matches 7 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death1
