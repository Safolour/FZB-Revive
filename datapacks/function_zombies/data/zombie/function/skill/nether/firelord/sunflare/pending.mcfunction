scoreboard players add @s fl.sunflare 1
execute if score @s fl.sunflare matches 100.. unless entity @s[tag=firelord.traveling] run function zombie:skill/nether/firelord/sunflare/start
