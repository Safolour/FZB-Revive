
execute store result score random zombie.creation.elude run random value 2500..5000
execute store result score random0 zombie.creation.elude run random value 0..1
execute if score random0 zombie.creation.elude matches 0 run scoreboard players operation random zombie.creation.elude *= -1 number
execute on vehicle store result entity @s Motion[0] float 0.0001 run scoreboard players get random zombie.creation.elude
execute store result score random zombie.creation.elude run random value 2500..5000
execute store result score random0 zombie.creation.elude run random value 0..1
execute if score random0 zombie.creation.elude matches 0 run scoreboard players operation random zombie.creation.elude *= -1 number
execute on vehicle store result entity @s Motion[2] float 0.0001 run scoreboard players get random zombie.creation.elude
