scoreboard players operation 1 zombie.remains.magmaslime.size.skill_timer = @s zombie.remains.magmaslime.size.skill_timer
scoreboard players set 5 zombie.remains.magmaslime.size.skill_timer 5
scoreboard players operation 1 zombie.remains.magmaslime.size.skill_timer %= 5 zombie.remains.magmaslime.size.skill_timer
scoreboard players reset 5 zombie.remains.magmaslime.size.skill_timer

execute unless score 1 zombie.remains.magmaslime.size.skill_timer matches 1 run return run scoreboard players reset 1 zombie.remains.magmaslime.size.skill_timer

scoreboard players reset 1 zombie.remains.magmaslime.size.skill_timer

#$say $(size)
$attribute @s scale base set $(size)
