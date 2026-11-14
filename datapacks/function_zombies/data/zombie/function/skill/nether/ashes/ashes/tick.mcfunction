scoreboard players add @s zombie.nether.ashes.ashes 1
#execute if score @s zombie.nether.ashes.ashes matches 2 run data merge entity @s {Fire:72000}

execute unless score round game.state matches 40 run particle ash ~ ~1 ~ 0.5 1 0.5 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1 ~ 0.5 1 0.5 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ~ ~1 ~ 0.5 1 0.5 0.2 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle white_ash ~ ~1 ~ 0.5 1 0.5 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~1 ~ 0.5 1 0.5 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~1 ~ 0.5 1 0.5 0.2 5 force @a[scores={particle=1}]

execute if score @s zombie.nether.ashes.ashes matches 3 run function zombie:skill/nether/ashes/ashes/particle/0
execute if score @s zombie.nether.ashes.ashes matches 4 run function zombie:skill/nether/ashes/ashes/particle/1
execute if score @s zombie.nether.ashes.ashes matches 5 run function zombie:skill/nether/ashes/ashes/particle/2
execute if score @s zombie.nether.ashes.ashes matches 6 run function zombie:skill/nether/ashes/ashes/particle/3
execute if score @s zombie.nether.ashes.ashes matches 7 run function zombie:skill/nether/ashes/ashes/particle/4
execute if score @s zombie.nether.ashes.ashes matches 8 run function zombie:skill/nether/ashes/ashes/particle/5
execute if score @s zombie.nether.ashes.ashes matches 9 run function zombie:skill/nether/ashes/ashes/particle/6
execute if score @s zombie.nether.ashes.ashes matches 10 run function zombie:skill/nether/ashes/ashes/particle/7

execute if score @s zombie.nether.ashes.ashes matches 10 run scoreboard players set @s zombie.nether.ashes.ashes 3
