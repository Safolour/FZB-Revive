
scoreboard players operation number zombie.bossbar_number = @s zombie.bossbar_number
scoreboard players operation number0 zombie.bossbar_number = number zombie.bossbar_number
scoreboard players operation number1 zombie.bossbar_number = number zombie.bossbar_number
scoreboard players operation health zombie.bossbar_number = @s zombie.health
scoreboard players operation health0 zombie.bossbar_number = @s zombie.max_health
function zombie:bossbar/if_health0
execute unless score @s zombie.bossbar_number0 = @s zombie.bossbar_number0 run scoreboard players operation @s zombie.bossbar_number0 = number1 zombie.bossbar_number
scoreboard players operation number0 zombie.bossbar_number -= number1 zombie.bossbar_number

scoreboard players operation uuid zombie.uuid = @s zombie.uuid
scoreboard players operation number zombie.bossbar_number = @s zombie.bossbar_number
scoreboard players operation @s zombie.bossbar_number0 -= number1 zombie.bossbar_number
scoreboard players operation number2 zombie.bossbar_number = @s zombie.bossbar_number0
#tellraw @a [{"score":{"name":"number","objective":"zombie.bossbar_number"}},{text:";"},{"score":{"name":"number1","objective":"zombie.bossbar_number"}},{text:";"},{"score":{"name":"number2","objective":"zombie.bossbar_number"}}]
execute as @e[type=armor_stand,tag=bossbar] if score @s zombie.uuid = uuid zombie.uuid run function zombie:bossbar/if_health2
scoreboard players operation @s zombie.bossbar_number0 = number1 zombie.bossbar_number
