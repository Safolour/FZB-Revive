
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle end_rod ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]

playsound block.end_portal_frame.fill record @a ~ ~ ~ 1.5 1
playsound block.note_block.chime record @a ~ ~ ~ 1.5 0
playsound block.amethyst_block.chime record @a ~ ~ ~ 1.5 0

execute as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/electric/aircraft/obviate/missile/damage0

scoreboard players set @s zombie.electric.aircraft.shoot.skill_timer 401