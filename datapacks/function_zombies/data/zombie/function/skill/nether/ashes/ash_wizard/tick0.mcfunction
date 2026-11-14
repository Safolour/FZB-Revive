
scoreboard players add @s zombie.nether.ashes.ashwizard.missile.skill_timer 1
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 2 force @a[scores={particle=0..2}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.25 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.25 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,0,1],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,0,1],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0.5,0,1],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0,1],scale:1} ^ ^ ^-0.25 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0,1],scale:1} ^ ^ ^-0.25 0 0 0 0 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0,1],scale:1} ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle portal ^ ^ ^ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle portal ^ ^ ^ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle portal ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle portal ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
function zombie:skill/nether/ashes/ash_wizard/missile/tp with entity @s data.position
execute if entity @a[scores={stat.player=1},distance=..2] run function zombie:skill/nether/ashes/ash_wizard/missile/damage
execute unless block ~ ~-0.5 ~ #weapon:gun_penetrable run function zombie:skill/nether/ashes/ash_wizard/missile/damage
execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer matches ..400 run return fail
kill @s
