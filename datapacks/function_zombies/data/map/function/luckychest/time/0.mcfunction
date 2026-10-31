
scoreboard players operation second1 luckychest.timer = @s luckychest.timer
scoreboard players operation second1 luckychest.timer %= 2 number

execute if score second1 luckychest.timer matches 1 run return fail

scoreboard players operation second luckychest.timer = @s luckychest.timer
scoreboard players operation second luckychest.timer /= 20 number
scoreboard players operation second0 luckychest.timer = @s luckychest.timer
scoreboard players operation second0 luckychest.timer %= 20 number
scoreboard players operation second0 luckychest.timer /= 2 number

execute store result storage luckychest root.time.second int 1 run scoreboard players get second luckychest.timer
execute store result storage luckychest root.time.second0 int 1 run scoreboard players get second0 luckychest.timer

function map:luckychest/time/1 with storage luckychest root.time