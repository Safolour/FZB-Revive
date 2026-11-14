function zombie:skill/nether/firelord/fire/drop
tag @s remove firelord.combo.third
scoreboard players reset @s zombie.skill.missile
tag @s add fl.choose.other
scoreboard players set @s zombie.skill_timer 0
