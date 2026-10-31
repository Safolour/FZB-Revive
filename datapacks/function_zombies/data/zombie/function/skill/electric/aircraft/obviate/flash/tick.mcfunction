scoreboard players operation health zombie.electric.aircraft.flash = @s zombie.health
scoreboard players operation maxhealth zombie.electric.aircraft.flash = @s zombie.max_health
scoreboard players set 100 zombie.number 100
scoreboard players operation health zombie.electric.aircraft.flash *= 100 zombie.number
scoreboard players operation health zombie.electric.aircraft.flash /= maxhealth zombie.electric.aircraft.flash
scoreboard players operation healthpercent zombie.electric.aircraft.flash = health zombie.electric.aircraft.flash
scoreboard players reset 100 zombie.number
scoreboard players reset health zombie.electric.aircraft.flash
scoreboard players reset maxhealth zombie.electric.aircraft.flash

scoreboard players add @s zombie.electric.aircraft.flash 1
execute if score @s zombie.electric.aircraft.flash matches 2 run team join zombie.electric.aircraft.1 @s
execute if score @s zombie.electric.aircraft.flash matches 2 run effect give @s glowing infinite 0 true

execute if score healthpercent zombie.electric.aircraft.flash matches 100 run team join zombie.electric.aircraft.1 @s

execute if score @s zombie.electric.aircraft.flash >= healthpercent zombie.electric.aircraft.flash run function zombie:skill/electric/aircraft/obviate/flash/0

execute if score healthpercent zombie.electric.aircraft.flash matches ..5 run tag @s[tag=skill.obviate,tag=!skill.obviate.death] add skill.obviate.death
execute if score healthpercent zombie.electric.aircraft.flash matches ..5 run tag @s[tag=skill.disperse,tag=!skill.disperse.death] add skill.disperse.death

scoreboard players reset healthpercent zombie.electric.aircraft.flash
