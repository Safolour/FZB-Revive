
execute at @s run particle flame ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=0}]
execute at @s run particle large_smoke ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=0}]

execute at @s run playsound entity.evoker.prepare_summon record @a ~ ~ ~ 10 1.4
execute at @s run playsound entity.guardian.death_land record @a ~ ~ ~ 10 0

function zombie:skill/nether/guardian/crimson/0/skill/suspense/spawn
function zombie:skill/nether/guardian/crimson/0/skill/suspense/spawn
function zombie:skill/nether/guardian/crimson/0/skill/suspense/spawn

scoreboard players add suspensecount zombie.nether.guardian.suspense.match 1
execute if score suspensecount zombie.nether.guardian.suspense.match matches 1 run function zombie:skill/nether/guardian/crimson/0/skill/suspense/tellraw
