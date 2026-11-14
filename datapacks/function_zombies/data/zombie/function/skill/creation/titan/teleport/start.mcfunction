execute if entity @s[tag=titan.tp.active] run return 0
execute if entity @s[tag=titan.eclipse.cast] run return 0
execute if entity @s[tag=titan.scatter.cast] run return 0
execute if entity @s[tag=titan.sword.cast] run return 0
execute if score @s titan.followup matches 1.. run return 0
function zombie:skill/creation/titan/teleport/glow_clear
function zombie:skill/creation/titan/combo/select
tag @s add titan.tp.active
scoreboard players set @s titan.tp_age 0
function zombie:skill/creation/titan/teleport/fx
