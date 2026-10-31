scoreboard players add @s zombie.chaos.chargetimer 1

execute if score @s zombie.chaos.chargetimer matches 300.. run function zombie:skill/chaos/super_empowered_zombie/charge/charge

scoreboard players add @s zombie.chaos.empoweredparticle 1
execute if score @s zombie.chaos.empoweredparticle matches 10 run particle angry_villager ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.chaos.empoweredparticle matches 10 run scoreboard players reset @s zombie.chaos.empoweredparticle
