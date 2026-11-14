
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust{color:[1,0.5,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0.5,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0.5,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a[scores={particle=1}]

function zombie:skill/nether/guardian/floor/platform/break0