scoreboard players add @s zombie.nether.warped.teleporter.skill_timer 1
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.warped.teleporter.skill_timer matches ..20 run return 0
