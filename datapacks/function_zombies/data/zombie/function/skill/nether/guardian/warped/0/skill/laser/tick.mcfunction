
scoreboard players add @s zombie.nether.guardian.laser 1

execute if score @s zombie.nether.guardian.laser matches 8 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 18 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 28 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 38 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 40 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 50 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.laser matches 60 as @n[type=armor_stand,tag=skill.warpedguardian.match] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]

execute if score @s zombie.nether.guardian.laser matches 70 run effect clear @s glowing

execute if score @s zombie.nether.guardian.laser matches 20 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 10 1
execute if score @s zombie.nether.guardian.laser matches 25 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 10 1
execute if score @s zombie.nether.guardian.laser matches 30 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 10 1.5
execute if score @s zombie.nether.guardian.laser matches 40 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 10 2

execute if score @s zombie.nether.guardian.laser matches 20 run particle sonic_boom ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 30 run particle sonic_boom ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 30 run particle gust ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 40 run particle gust ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.laser matches 60 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 65 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 70 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 75 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 80 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 85 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 90 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 95 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 100 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 105 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 110 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 115 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 120 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 125 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 130 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 135 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 140 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 145 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 150 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 155 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 160 run particle explosion ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 165 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.laser matches 60 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 70 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 80 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 90 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 100 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 110 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 120 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 130 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 140 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 150 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 160 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nether.guardian.laser matches 170 run particle flash ^ ^1 ^2 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.guardian.laser matches 170 run playsound block.beacon.deactivate record @a ~ ~ ~ 10 1

execute if score @s zombie.nether.guardian.laser matches 60 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 70 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 80 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 90 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 100 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 110 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 120 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 130 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 140 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 150 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2
execute if score @s zombie.nether.guardian.laser matches 160 run playsound block.beacon.ambient record @a ~ ~ ~ 10 2

execute if score @s zombie.nether.guardian.laser matches 60 run playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 10 0
execute if score @s zombie.nether.guardian.laser matches 70 run playsound entity.wither.spawn record @a ~ ~ ~ 10 0

execute if score @s zombie.nether.guardian.laser matches 50 run playsound block.beacon.activate record @a ~ ~ ~ 10 1

execute if score @s zombie.nether.guardian.laser matches 70..170 run function zombie:skill/nether/guardian/warped/0/skill/laser/shoot

execute if score @s zombie.nether.guardian.laser matches 180.. run function zombie:skill/nether/guardian/warped/0/skill/laser/end


scoreboard players operation mod zombie.nether.guardian.laser = @s zombie.nether.guardian.laser
scoreboard players set 5 zombie.nether.guardian.laser 5
scoreboard players operation mod zombie.nether.guardian.laser %= 5 zombie.nether.guardian.laser
scoreboard players reset 5 zombie.nether.guardian.laser
#scoreboard players reset mod zombie.nether.guardian.laser
