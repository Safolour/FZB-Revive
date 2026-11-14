scoreboard players add @s zombie.skill.missile 1
execute if score @s zombie.skill.missile matches 32.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] if entity @s[tag=firelord.combo.first] run return run function zombie:skill/nether/firelord/fire/combo_first
execute if score @s zombie.skill.missile matches 20.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] if entity @s[tag=firelord.combo.second] run function zombie:skill/nether/firelord/fire/combo_second
execute if score @s zombie.skill.missile matches 20.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] if entity @s[tag=firelord.combo.third] run function zombie:skill/nether/firelord/fire/combo_third
