execute if entity @s[tag=origin.arrive] run return run function zombie:skill/creation/origin/arrival_tick
execute if entity @s[tag=origin.depart] run return run function zombie:skill/creation/origin/depart_tick
function zombie:skill/creation/origin/active
execute if score @s origin.busy matches 1 run return 0
scoreboard players remove @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches ..0 run function zombie:skill/creation/origin/begin
