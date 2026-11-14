summon lightning_bolt
summon lightning_bolt
summon lightning_bolt

playsound item.trident.thunder record @a ~ ~ ~ 10 0

execute unless score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=1}]


execute unless entity @e[type=guardian,tag=skill.crimsonguardian] run function zombie:skill/nether/guardian/reset0
return 0
function zombie:skill/nether/guardian/reset
