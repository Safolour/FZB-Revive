kill @e[type=armor_stand,tag=firelord.p2.shieldbar.main,distance=..6]
scoreboard players add zombie.uuid zombie.uuid 1
scoreboard players operation @s zombie.uuid = zombie.uuid zombie.uuid
scoreboard players set @s zombie.bossbar_number 100
scoreboard players set @s zombie.bossbar_speed_stay 20
scoreboard players set @s zombie.bossbar_speed_fade 2
