scoreboard players add @s zombie.chaos.charge 1
scoreboard players set @s zombie.chaos.chargetimer 1
execute if score @s zombie.chaos.charge matches 5.. run return run function zombie:skill/chaos/super_empowered_zombie/charge/end

particle angry_villager ~ ~1 ~ 0.3 0.3 0.3 0 20 force @a[scores={particle=0..1}]
playsound entity.wolf.growl record @a ~ ~ ~ 2 1


execute store result score speed zombie.chaos.charge run scoreboard players get @s zombie.speed
scoreboard players operation speed0 zombie.chaos.charge = speed zombie.chaos.charge

scoreboard players set 10 zombie.number 10
scoreboard players set 100 zombie.number 100

scoreboard players operation speed0 zombie.chaos.charge *= 10 zombie.number
scoreboard players operation speed0 zombie.chaos.charge /= 100 zombie.number

scoreboard players operation speed zombie.chaos.charge += speed0 zombie.chaos.charge

scoreboard players operation @s zombie.speed = speed zombie.chaos.charge


scoreboard players reset speed zombie.chaos.charge
scoreboard players reset speed0 zombie.chaos.charge


execute store result score damage zombie.chaos.charge run data get entity @s attributes[{id:"minecraft:attack_damage"}].base 1000
execute store result score damage0 zombie.chaos.charge run data get entity @s attributes[{id:"minecraft:attack_damage"}].base 100
scoreboard players operation damage zombie.chaos.charge += damage0 zombie.chaos.charge

execute store result entity @s attributes[{id:"minecraft:attack_damage"}].base double 0.001 run scoreboard players get damage zombie.chaos.charge

scoreboard players reset damage zombie.chaos.charge
scoreboard players reset damage0 zombie.chaos.charge
