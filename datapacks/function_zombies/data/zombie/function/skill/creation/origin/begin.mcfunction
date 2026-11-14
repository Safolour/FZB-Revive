function zombie:skill/creation/origin/volley/migrate
function zombie:skill/creation/origin/active
execute if score @s origin.busy matches 1 run return 0
execute if score @s origin.tp_glow matches 1.. run function zombie:skill/creation/origin/tp_glow_clear
function zombie:skill/creation/origin/volley/finish
tag @s add origin.depart
scoreboard players set @s zombie.skill_timer 6
