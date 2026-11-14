scoreboard players add @s titan.tp_age 1
execute if score @s titan.tp_age matches ..4 at @s run function zombie:skill/creation/titan/teleport/fx
execute if score @s titan.tp_age matches 5 at @s run function zombie:skill/creation/titan/teleport/depart
execute if score @s titan.tp_age matches 6..13 run function zombie:skill/creation/titan/teleport/arrival_tick
execute if score @s titan.tp_age matches 12 run function zombie:skill/creation/titan/teleport/reveal
execute if score @s titan.tp_age matches 13.. run function zombie:skill/creation/titan/teleport/finish
