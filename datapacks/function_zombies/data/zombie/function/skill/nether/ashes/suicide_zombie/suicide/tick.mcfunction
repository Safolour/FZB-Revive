scoreboard players add @s zombie.nether.ashes.suicidezombie.suicide 1

execute unless score round game.state matches 40 run particle white_ash ~ ~3 ~ 1 3 1 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~3 ~ 1 3 1 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle white_ash ~ ~3 ~ 1 3 1 0 10 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]

execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 1..50 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle

execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 5 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 15 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 25 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 35 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 45 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
#execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 40 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
#execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 44 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
#execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 47 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0
#execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 49 run function zombie:skill/nether/ashes/suicide_zombie/suicide/particle0

execute if score @s zombie.nether.ashes.suicidezombie.suicide matches 50.. run function zombie:skill/nether/ashes/suicide_zombie/suicide/end
