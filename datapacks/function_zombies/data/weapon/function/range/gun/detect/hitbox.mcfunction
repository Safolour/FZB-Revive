
scoreboard players set random weapon.gun_rotationy 0
scoreboard players set y weapon.gun_rotationy 0
execute store result score y weapon.gun_rotationy run data get entity @p[scores={weapon.use=1..}] Rotation[1] 10

execute as @e[tag=mob,tag=badheadshot] at @s facing entity @p[scores={weapon.use=1..}] eyes positioned ^ ^ ^1 rotated as @p[scores={weapon.use=1..}] positioned ^ ^ ^1 if entity @s[distance=..0.5] run scoreboard players set y weapon.gun_rotationy 0

execute if score y weapon.gun_rotationy matches ..-50 run tag @s add hit
execute if score y weapon.gun_rotationy matches ..-50 run return run tag @s add hit1
execute if entity @s[tag=skill.giant] run return run function weapon:range/gun/detect/hitbox3
execute if entity @s[tag=babyzombie] run return run function weapon:range/gun/detect/hitbox2
function weapon:range/gun/detect/hitbox1