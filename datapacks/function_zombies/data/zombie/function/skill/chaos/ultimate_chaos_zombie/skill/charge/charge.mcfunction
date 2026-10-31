scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_charge 1
scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_chargetimer 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_charge matches 7.. run return run function zombie:skill/chaos/ultimate_chaos_zombie/skill/charge/end

particle angry_villager ~ ~1 ~ 0.3 0.3 0.3 0 20 force @a[scores={particle=0}]
playsound entity.wolf.growl record @a ~ ~ ~ 2 1


execute store result score speed zombie.chaos.ultimate_chaos_zombie.skill_charge run scoreboard players get @s zombie.speed
scoreboard players operation speed0 zombie.chaos.ultimate_chaos_zombie.skill_charge = speed zombie.chaos.ultimate_chaos_zombie.skill_charge

scoreboard players set 10 zombie.number 10
scoreboard players set 100 zombie.number 100

scoreboard players operation speed0 zombie.chaos.ultimate_chaos_zombie.skill_charge *= 10 zombie.number
scoreboard players operation speed0 zombie.chaos.ultimate_chaos_zombie.skill_charge /= 100 zombie.number

scoreboard players operation speed zombie.chaos.ultimate_chaos_zombie.skill_charge += speed0 zombie.chaos.ultimate_chaos_zombie.skill_charge

scoreboard players operation @s zombie.speed = speed zombie.chaos.ultimate_chaos_zombie.skill_charge


scoreboard players reset speed zombie.chaos.ultimate_chaos_zombie.skill_charge
scoreboard players reset speed0 zombie.chaos.ultimate_chaos_zombie.skill_charge


execute store result score damage zombie.chaos.ultimate_chaos_zombie.skill_charge run data get entity @s attributes[{id:"minecraft:attack_damage"}].base 1000
execute store result score damage0 zombie.chaos.ultimate_chaos_zombie.skill_charge run data get entity @s attributes[{id:"minecraft:attack_damage"}].base 100
scoreboard players operation damage zombie.chaos.ultimate_chaos_zombie.skill_charge += damage0 zombie.chaos.ultimate_chaos_zombie.skill_charge

execute store result entity @s attributes[{id:"minecraft:attack_damage"}].base double 0.001 run scoreboard players get damage zombie.chaos.ultimate_chaos_zombie.skill_charge

scoreboard players reset damage zombie.chaos.ultimate_chaos_zombie.skill_charge
scoreboard players reset damage0 zombie.chaos.ultimate_chaos_zombie.skill_charge
