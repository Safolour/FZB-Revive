
execute if entity @n[type=armor_stand,tag=player_stat,scores={revive=2}] run return run ride @s mount @n[type=armor_stand,tag=player_stat,tag=ride,scores={revive=2}]

summon armor_stand ~ ~ ~ {Tags:["player_stat","revive","down","ride","chosen"],Invisible:1b,Marker:1b,Small:1b}
scoreboard players operation @n[type=armor_stand,tag=player_stat,tag=chosen] revive.uuid = @s uuid
scoreboard players set @n[type=armor_stand,tag=player_stat,tag=chosen] revive 2
ride @s mount @n[type=armor_stand,tag=player_stat,tag=chosen]
tag @e[type=armor_stand,tag=player_stat,tag=chosen] remove chosen