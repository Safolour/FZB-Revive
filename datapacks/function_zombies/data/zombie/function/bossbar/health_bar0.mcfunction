
scoreboard players operation number zombie.bossbar_number0 = @s zombie.bossbar_number
scoreboard players operation number0 zombie.bossbar_number0 = @s zombie.bossbar_number0
scoreboard players operation number1 zombie.bossbar_number0 = @s zombie.bossbar_number1

execute if score number1 zombie.bossbar_number0 matches ..-1 run scoreboard players operation number zombie.bossbar_number0 -= number0 zombie.bossbar_number0
execute if score number1 zombie.bossbar_number0 matches ..-1 run scoreboard players operation number0 zombie.bossbar_number0 += number1 zombie.bossbar_number0
execute if score number1 zombie.bossbar_number0 matches 0.. run scoreboard players operation number zombie.bossbar_number0 -= number1 zombie.bossbar_number0
execute if score number1 zombie.bossbar_number0 matches 0.. run scoreboard players operation number zombie.bossbar_number0 -= number0 zombie.bossbar_number0

execute store result storage zombie root.bossbar.number.0 int 1 run scoreboard players get number zombie.bossbar_number0
execute store result storage zombie root.bossbar.number.1 int 1 run scoreboard players get number0 zombie.bossbar_number0
execute if score number1 zombie.bossbar_number0 matches 0.. store result storage zombie root.bossbar.number.2 int 1 run scoreboard players get number1 zombie.bossbar_number0
execute if score number1 zombie.bossbar_number0 matches ..-1 store result storage zombie root.bossbar.number.2 int -1 run scoreboard players get number1 zombie.bossbar_number0
function zombie:bossbar/health_bar1 with storage zombie root.bossbar.number
function zombie:bossbar/health_bar2 with storage zombie root.bossbar.number
data remove storage zombie root
