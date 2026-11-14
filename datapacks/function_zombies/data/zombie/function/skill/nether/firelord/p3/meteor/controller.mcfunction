# Cancel pending volleys when P3 has ended. Existing falling meteors finish.
execute unless entity @e[type=zombie,tag=skill.firelord,tag=firelord.p3] run return run function zombie:skill/nether/firelord/p3/meteor/stop
scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 700 run function zombie:skill/nether/firelord/p3/meteor/warn
execute if score @s zombie.skill_timer matches 745..1000 run function zombie:skill/nether/firelord/p3/meteor/volley
execute if score @s zombie.skill_timer matches 1000.. run function zombie:skill/nether/firelord/p3/meteor/stop
