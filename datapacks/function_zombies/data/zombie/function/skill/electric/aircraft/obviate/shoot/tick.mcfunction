scoreboard players add @s zombie.electric.aircraft.shoot.skill_timer 1

execute store result score random zombie.random run random value 0..5
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches ..80 if score random zombie.random matches 0 run scoreboard players add @s zombie.electric.aircraft.shoot.skill_timer 2
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches ..80 if score random zombie.random matches 1 run scoreboard players remove @s zombie.electric.aircraft.shoot.skill_timer 2
scoreboard players reset random zombie.random

execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 90 run function zombie:skill/electric/aircraft/obviate/shoot/init
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 100 run function zombie:skill/electric/aircraft/obviate/shoot/init

execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 100 run scoreboard players set @s zombie.electric.aircraft.shoot.skill_timer 0
