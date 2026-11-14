scoreboard players add @s origin.fx_age 1
execute store result score #debris.x origin.line run data get entity @s transformation.scale[0] 100
execute store result score #debris.y origin.line run data get entity @s transformation.scale[1] 100
execute store result score #debris.z origin.line run data get entity @s transformation.scale[2] 100
execute if score @s origin.fx_age matches 1..2 run scoreboard players add #debris.x origin.line 512
execute if score @s origin.fx_age matches 1..2 run scoreboard players add #debris.y origin.line 256
execute if score @s origin.fx_age matches 1..2 run scoreboard players add #debris.z origin.line 256
execute if score @s origin.fx_age matches 4.. if score #debris.x origin.line matches 1000.. run scoreboard players remove #debris.x origin.line 1000
execute if score @s origin.fx_age matches 4.. if score #debris.y origin.line matches 500.. run scoreboard players remove #debris.y origin.line 500
execute if score @s origin.fx_age matches 4.. if score #debris.z origin.line matches 500.. run scoreboard players remove #debris.z origin.line 500
execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get #debris.x origin.line
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get #debris.y origin.line
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get #debris.z origin.line
execute if score @s origin.fx_age matches 4.. if score #debris.x origin.line matches ..999 if score #debris.y origin.line matches ..499 if score #debris.z origin.line matches ..499 run kill @s
execute if score @s origin.fx_age matches 14.. run kill @s
