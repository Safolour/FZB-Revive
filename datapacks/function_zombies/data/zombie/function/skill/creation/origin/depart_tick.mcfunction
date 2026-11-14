function zombie:skill/creation/origin/fx
scoreboard players remove @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches ..0 run function zombie:skill/creation/origin/teleport
