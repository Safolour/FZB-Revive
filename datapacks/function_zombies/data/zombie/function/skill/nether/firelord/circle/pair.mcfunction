tag @s add firelord.circle.matched
tag @e[type=item_display,tag=firelord.circle.warped,distance=..3,sort=nearest,limit=1] add firelord.circle.matched
execute if entity @e[type=item_display,tag=firelord.circle.r1,tag=firelord.circle.matched] as @a[tag=firelord.circle.r1] at @s run function zombie:skill/nether/firelord/circle/reward
execute if entity @e[type=item_display,tag=firelord.circle.r1,tag=firelord.circle.matched] run tag @a[tag=firelord.circle.r1] remove firelord.circle.r1
execute if entity @e[type=item_display,tag=firelord.circle.r2,tag=firelord.circle.matched] as @a[tag=firelord.circle.r2] at @s run function zombie:skill/nether/firelord/circle/reward
execute if entity @e[type=item_display,tag=firelord.circle.r2,tag=firelord.circle.matched] run tag @a[tag=firelord.circle.r2] remove firelord.circle.r2
execute if entity @e[type=item_display,tag=firelord.circle.b1,tag=firelord.circle.matched] as @a[tag=firelord.circle.b1] at @s run function zombie:skill/nether/firelord/circle/reward
execute if entity @e[type=item_display,tag=firelord.circle.b1,tag=firelord.circle.matched] run tag @a[tag=firelord.circle.b1] remove firelord.circle.b1
execute if entity @e[type=item_display,tag=firelord.circle.b2,tag=firelord.circle.matched] as @a[tag=firelord.circle.b2] at @s run function zombie:skill/nether/firelord/circle/reward
execute if entity @e[type=item_display,tag=firelord.circle.b2,tag=firelord.circle.matched] run tag @a[tag=firelord.circle.b2] remove firelord.circle.b2
execute as @e[type=item_display,tag=firelord.circle.matched] at @s run function zombie:skill/nether/firelord/circle/match_flames
function zombie:skill/nether/firelord/circle/pair_midpoint
playsound entity.player.levelup player @a[scores={system.room=4..}] ~ ~ ~ 1 1
kill @e[type=item_display,tag=firelord.circle.matched]

