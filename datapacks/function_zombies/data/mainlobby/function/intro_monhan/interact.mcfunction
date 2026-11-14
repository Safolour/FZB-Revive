execute store result score #intro uuid0 run data get entity @s interaction.player[0]
execute store result score #intro uuid1 run data get entity @s interaction.player[1]
execute store result score #intro uuid2 run data get entity @s interaction.player[2]
execute store result score #intro uuid3 run data get entity @s interaction.player[3]
execute as @a[scores={system.room=2}] at @s if score @s uuid0 = #intro uuid0 if score @s uuid1 = #intro uuid1 if score @s uuid2 = #intro uuid2 if score @s uuid3 = #intro uuid3 run function mainlobby:intro_monhan/main
data remove entity @s interaction
