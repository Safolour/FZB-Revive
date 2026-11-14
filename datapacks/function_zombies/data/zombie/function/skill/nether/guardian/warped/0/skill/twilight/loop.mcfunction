
scoreboard players add @s zombie.nether.guardian.twilight 1
execute as @s at @s run tp @s ^ ^ ^1
execute unless score round game.state matches 40 run particle scrape ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle scrape ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle scrape ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle scrape ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle scrape ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle scrape ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=1}]

execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.nether.guardian.twilight 100

execute if entity @a[scores={stat.player=1},distance=..0.5] as @a[scores={stat.player=1},distance=..0.5] at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/damage
execute positioned ^ ^ ^0.5 if entity @a[scores={stat.player=1},distance=..0.5] as @a[scores={stat.player=1},distance=..0.5] at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/damage


execute if score @s zombie.nether.guardian.twilight matches ..40 at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/loop
