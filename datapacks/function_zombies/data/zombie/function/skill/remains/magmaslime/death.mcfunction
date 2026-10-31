tag @s add skill.magmaslime.death
playsound entity.magma_cube.death record @a ~ ~ ~ 1 1
playsound entity.magma_cube.death record @a ~ ~ ~ 1 1
playsound entity.magma_cube.death record @a ~ ~ ~ 1 0

execute if score @s zombie.remains.magmaslime.size matches 0..1 run particle dripping_lava ~ ~ ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 2..3 run particle dripping_lava ~ ~ ~ 1 1 1 0 40 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 4..5 run particle dripping_lava ~ ~ ~ 1.5 1.5 1.5 0 60 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 6..7 run particle dripping_lava ~ ~ ~ 2 2 2 0 90 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 8.. run particle dripping_lava ~ ~ ~ 2.5 2.5 2.5 0 130 force @a[scores={particle=0}]

execute if score @s zombie.remains.magmaslime.size matches 0..1 run particle dust_color_transition{from_color:[0.6,0,0],to_color:[1,0.8,0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 40 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 2..3 run particle dust_color_transition{from_color:[0.6,0,0],to_color:[1,0.8,0],scale:1} ~ ~ ~ 1 1 1 0 80 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 4..5 run particle dust_color_transition{from_color:[0.6,0,0],to_color:[1,0.8,0],scale:1} ~ ~ ~ 1.5 1.5 1.5 0 120 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 6..7 run particle dust_color_transition{from_color:[0.6,0,0],to_color:[1,0.8,0],scale:1} ~ ~ ~ 2 2 2 0 180 force @a[scores={particle=0}]
execute if score @s zombie.remains.magmaslime.size matches 8.. run particle dust_color_transition{from_color:[0.6,0,0],to_color:[1,0.8,0],scale:1} ~ ~ ~ 2.5 2.5 2.5 0 260 force @a[scores={particle=0}]
