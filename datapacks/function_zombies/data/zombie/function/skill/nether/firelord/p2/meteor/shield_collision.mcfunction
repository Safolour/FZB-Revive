# Remove only this meteor and its paired ground marker.
scoreboard players operation #meteor_hit zombie.uuid = @s zombie.uuid
scoreboard players set #shielddamage zombie.health 240
execute as @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1,distance=..5] at @s run function zombie:skill/nether/firelord/p2/safe_hit
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute as @e[type=item_display,tag=firelord.p2.mark] if score @s zombie.uuid = #meteor_hit zombie.uuid run kill @s
execute as @e[type=item_display,tag=firelord.p3.meteor.mark] if score @s zombie.uuid = #meteor_hit zombie.uuid run kill @s
execute as @e[type=block_display,tag=firelord.p2.meteor] if score @s zombie.uuid = #meteor_hit zombie.uuid run kill @s
execute as @e[type=block_display,tag=firelord.p3.meteor.rock] if score @s zombie.uuid = #meteor_hit zombie.uuid run kill @s
