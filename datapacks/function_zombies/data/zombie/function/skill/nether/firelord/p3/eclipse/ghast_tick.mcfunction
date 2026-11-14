scoreboard players add @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing] fl.p2.shot 1
execute as @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=210..249}] at @s run function zombie:skill/nether/firelord/p2/ghast/charge
execute if entity @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=250..}] run function zombie:skill/nether/firelord/p2/ghast/shoot
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=250..}] fl.p2.shot 0
execute as @e[type=ghast,tag=firelord.p2.ghast] at @s run function zombie:skill/nether/firelord/p2/ghast/tick
execute as @e[type=marker,tag=firelord.p2.shot] at @s run function zombie:skill/nether/firelord/p2/shot/tick
