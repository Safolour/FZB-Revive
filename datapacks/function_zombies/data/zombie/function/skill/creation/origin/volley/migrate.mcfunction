execute unless score @s origin.tool matches 1..2 run return 0
execute if score @s origin.cast matches 1.. run return 0
execute if entity @s[tag=origin.depart] run return 0
execute if entity @s[tag=origin.arrive] run return 0
function zombie:skill/creation/origin/volley/legacy_restore
