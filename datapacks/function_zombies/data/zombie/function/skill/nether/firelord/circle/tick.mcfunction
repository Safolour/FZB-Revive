scoreboard players add @s firelord.circle 1
execute as @a[tag=firelord.circle.r1] unless entity @s[scores={stat.player=1},gamemode=adventure] run tag @s remove firelord.circle.owner
execute as @a[tag=firelord.circle.r1] unless entity @s[scores={stat.player=1},gamemode=adventure] run tag @s remove firelord.circle.r1
execute if entity @e[type=item_display,tag=firelord.circle.r1,tag=!firelord.circle.ground] unless entity @a[tag=firelord.circle.r1] run tag @a[scores={stat.player=1},gamemode=adventure,tag=!firelord.circle.owner,distance=..64,sort=random,limit=1] add firelord.circle.r1
tag @a[tag=firelord.circle.r1] add firelord.circle.owner
execute as @a[tag=firelord.circle.r1,scores={stat.player=1},gamemode=adventure] at @s run tp @e[type=item_display,tag=firelord.circle.r1,limit=1] ~ ~0.12 ~
execute as @a[tag=firelord.circle.b1] unless entity @s[scores={stat.player=1},gamemode=adventure] run tag @s remove firelord.circle.owner
execute as @a[tag=firelord.circle.b1] unless entity @s[scores={stat.player=1},gamemode=adventure] run tag @s remove firelord.circle.b1
execute if entity @e[type=item_display,tag=firelord.circle.b1,tag=!firelord.circle.ground] unless entity @a[tag=firelord.circle.b1] run tag @a[scores={stat.player=1},gamemode=adventure,tag=!firelord.circle.owner,distance=..64,sort=random,limit=1] add firelord.circle.b1
tag @a[tag=firelord.circle.b1] add firelord.circle.owner
execute as @a[tag=firelord.circle.b1,scores={stat.player=1},gamemode=adventure] at @s run tp @e[type=item_display,tag=firelord.circle.b1,limit=1] ~ ~0.12 ~
execute if entity @s[tag=firelord.circle.r2] at @s run tp @e[type=item_display,tag=firelord.circle.r2,limit=1] ~ ~0.12 ~
execute if entity @s[tag=firelord.circle.b2] at @s run tp @e[type=item_display,tag=firelord.circle.b2,limit=1] ~ ~0.12 ~
execute as @e[type=item_display,tag=firelord.circle.crimson] at @s run tp @s ~ ~ ~ ~-4 ~
execute as @e[type=item_display,tag=firelord.circle.warped] at @s run tp @s ~ ~ ~ ~4 ~
execute as @e[type=item_display,tag=firelord.circle.model] at @s run function zombie:skill/nether/firelord/circle/flame_trail
execute as @e[type=item_display,tag=firelord.circle.crimson] at @s if entity @e[type=item_display,tag=firelord.circle.warped,distance=..3,limit=1] run function zombie:skill/nether/firelord/circle/pair
execute unless entity @e[type=item_display,tag=firelord.circle.model] run return run function zombie:skill/nether/firelord/circle/end
execute if score @s firelord.circle matches 400.. run function zombie:skill/nether/firelord/circle/fail

