playsound entity.zombie.attack_iron_door record @a ~ ~ ~ 1.5 1
particle block{block_state:"iron_block"} ~ ~1.2 ~ 0.2 0.5 0.2 0 20 force @a[scores={particle=0}]

scoreboard players operation @s zombie.electric.automation.healthpercent = @s zombie.health
scoreboard players set 100 zombie.number 100
scoreboard players operation @s zombie.electric.automation.healthpercent *= 100 zombie.number
scoreboard players operation @s zombie.electric.automation.healthpercent /= @s zombie.max_health
scoreboard players reset 100 zombie.number

execute if score @s zombie.electric.automation.healthpercent matches ..50 run tag @s add skill.automation.smoke
execute if score @s zombie.electric.automation.healthpercent matches ..50 run particle lava ~ ~1.2 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
