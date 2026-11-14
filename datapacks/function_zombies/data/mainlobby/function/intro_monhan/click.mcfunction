scoreboard players operation #idx monhan = @s dialogue.trigger
scoreboard players set @s dialogue.trigger 0
scoreboard players operation #idx monhan -= @s monhan.key
execute unless score #idx monhan matches 1..99 run return 0
execute unless entity @e[type=interaction,tag=fzb.intro_monhan.hit,distance=..5] run return 0
execute if score @s monhan.page matches 80 if score #idx monhan matches 1 run return run function map:area/lab/monhan/page/tips/show
execute if score @s monhan.page matches 70..71 if score #idx monhan matches 1 run return run function mainlobby:intro_monhan/tip
execute if score @s monhan.page matches 70..71 if score #idx monhan matches 2 run return run function map:area/lab/monhan/page/tips/enemies
execute if score @s monhan.page matches 70..71 if score #idx monhan matches 3 run return run function mainlobby:intro_monhan/close
execute if score @s monhan.page matches 72 if score #idx monhan matches 1 run return run function mainlobby:intro_monhan/tip
execute if score @s monhan.page matches 72 if score #idx monhan matches 2 run return run function mainlobby:intro_monhan/close
execute if score @s monhan.page matches 72 if score #idx monhan matches 10..21 run return run function map:area/lab/monhan/page/tips/click_enemies
execute if score @s monhan.page matches 73 if score #idx monhan matches 1 run return run function map:area/lab/monhan/page/tips/enemies
