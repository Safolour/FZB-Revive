
execute if score @s zombie.bossbar_number1 matches 1.. run scoreboard players remove @s zombie.bossbar_number1 1
execute if score @s zombie.bossbar_number1 matches ..-1 run scoreboard players add @s zombie.bossbar_number1 1
function zombie:bossbar/health_bar0