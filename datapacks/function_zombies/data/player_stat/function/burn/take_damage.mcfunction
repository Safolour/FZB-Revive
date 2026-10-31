
tag @s add chosen

execute on attacker if entity @s[tag=fireaspect] run scoreboard players operation @p[tag=chosen] stat.burn_timer = default.burn stat.burn

tag @s remove chosen