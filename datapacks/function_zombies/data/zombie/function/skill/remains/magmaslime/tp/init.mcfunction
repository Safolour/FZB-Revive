execute store result score x zombie.remains.magmaslime.tp run data get entity @s Pos[0]
execute store result score y zombie.remains.magmaslime.tp run data get entity @s Pos[1]
execute store result score z zombie.remains.magmaslime.tp run data get entity @s Pos[2]

execute if score x zombie.remains.magmaslime.tp matches ..287 run tag @s add tpx
execute if score x zombie.remains.magmaslime.tp matches ..287 run scoreboard players set x zombie.remains.magmaslime.tp 288
execute if score x zombie.remains.magmaslime.tp matches 313.. run tag @s add tpx
execute if score x zombie.remains.magmaslime.tp matches 313.. run scoreboard players set x zombie.remains.magmaslime.tp 312

execute if score y zombie.remains.magmaslime.tp matches ..91 run tag @s add tpy
execute if score y zombie.remains.magmaslime.tp matches ..91 run scoreboard players set y zombie.remains.magmaslime.tp 92
execute if score y zombie.remains.magmaslime.tp matches 108.. run tag @s add tpy
execute if score y zombie.remains.magmaslime.tp matches 108.. run scoreboard players set y zombie.remains.magmaslime.tp 107

execute if score z zombie.remains.magmaslime.tp matches ..129 run tag @s add tpz
execute if score z zombie.remains.magmaslime.tp matches ..129 run scoreboard players set z zombie.remains.magmaslime.tp 130
execute if score z zombie.remains.magmaslime.tp matches 173.. run tag @s add tpz
execute if score z zombie.remains.magmaslime.tp matches 173.. run scoreboard players set z zombie.remains.magmaslime.tp 172

execute if entity @s[tag=tpx] store result entity @s Pos[0] int 1 run scoreboard players get x zombie.remains.magmaslime.tp
execute if entity @s[tag=tpy] store result entity @s Pos[1] int 1 run scoreboard players get y zombie.remains.magmaslime.tp
execute if entity @s[tag=tpz] store result entity @s Pos[2] int 1 run scoreboard players get z zombie.remains.magmaslime.tp

tag @s remove tpx
tag @s remove tpy
tag @s remove tpz

scoreboard players reset x zombie.remains.magmaslime.tp
scoreboard players reset y zombie.remains.magmaslime.tp
scoreboard players reset z zombie.remains.magmaslime.tp
