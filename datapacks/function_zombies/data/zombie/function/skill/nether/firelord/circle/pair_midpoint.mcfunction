# Place one purification at the midpoint of this matched red and blue ring.
summon marker ~ ~ ~ {Tags:["firelord.circle.midpoint"]}
execute store result score #circle_x firelord.circle run data get entity @s Pos[0] 1000
execute store result score #circle_other firelord.circle run data get entity @e[type=item_display,tag=firelord.circle.warped,tag=firelord.circle.matched,distance=..3,limit=1] Pos[0] 1000
scoreboard players operation #circle_x firelord.circle += #circle_other firelord.circle
scoreboard players operation #circle_x firelord.circle /= 2 number
execute store result entity @e[type=marker,tag=firelord.circle.midpoint,sort=nearest,limit=1] Pos[0] double 0.001 run scoreboard players get #circle_x firelord.circle
execute store result score #circle_y firelord.circle run data get entity @s Pos[1] 1000
execute store result score #circle_other firelord.circle run data get entity @e[type=item_display,tag=firelord.circle.warped,tag=firelord.circle.matched,distance=..3,limit=1] Pos[1] 1000
scoreboard players operation #circle_y firelord.circle += #circle_other firelord.circle
scoreboard players operation #circle_y firelord.circle /= 2 number
execute store result entity @e[type=marker,tag=firelord.circle.midpoint,sort=nearest,limit=1] Pos[1] double 0.001 run scoreboard players get #circle_y firelord.circle
execute store result score #circle_z firelord.circle run data get entity @s Pos[2] 1000
execute store result score #circle_other firelord.circle run data get entity @e[type=item_display,tag=firelord.circle.warped,tag=firelord.circle.matched,distance=..3,limit=1] Pos[2] 1000
scoreboard players operation #circle_z firelord.circle += #circle_other firelord.circle
scoreboard players operation #circle_z firelord.circle /= 2 number
execute store result entity @e[type=marker,tag=firelord.circle.midpoint,sort=nearest,limit=1] Pos[2] double 0.001 run scoreboard players get #circle_z firelord.circle
execute at @e[type=marker,tag=firelord.circle.midpoint,sort=nearest,limit=1] run function map:powerup/summon/purification
kill @e[type=marker,tag=firelord.circle.midpoint,sort=nearest,limit=1]
