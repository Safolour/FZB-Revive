execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 50 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 0.2 50 force @a[scores={particle=1}]

playsound entity.generic.explode record @a ~ ~ ~ 10 0
playsound item.totem.use record @a ~ ~ ~ 10 0

function zombie:skill/nether/guardian/warped/0/skill/eclipse/clear

function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
function zombie:skill/nether/guardian/warped/0/skill/eclipse/death
