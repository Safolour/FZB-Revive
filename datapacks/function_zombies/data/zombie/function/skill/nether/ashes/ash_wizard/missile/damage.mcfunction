
scoreboard players set @s zombie.nether.ashes.ashwizard.missile.skill_timer 401

execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle gust ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound entity.warden.attack_impact record @a ~ ~ ~ 1.5 1
playsound item.trident.thunder record @a ~ ~ ~ 2 0

execute if entity @a[scores={stat.player=1},distance=..2] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/nether/ashes/ash_wizard/missile/damage0
