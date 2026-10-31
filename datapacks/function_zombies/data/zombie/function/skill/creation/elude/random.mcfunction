execute store result score random zombie.random run random value 0..10

execute if score random zombie.random matches 0..2 run scoreboard players add @s zombie.creation.elude 3
execute if score random zombie.random matches 3..5 run scoreboard players add @s zombie.creation.elude 5
execute if score random zombie.random matches 6 run scoreboard players remove @s zombie.creation.elude 10

scoreboard players reset random zombie.random