execute if entity @s[tag=firelord.p3] run return run function zombie:skill/nether/firelord/fire/combo_to_third
function zombie:skill/nether/firelord/fire/drop
tag @s remove firelord.combo.second
scoreboard players reset @s zombie.skill.missile
tag @s add fl.choose.other
scoreboard players set @s zombie.skill_timer 0
