
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=0}]

playsound block.note_block.guitar record @a ~ ~ ~ 2 0
playsound entity.ender_eye.death record @a ~ ~ ~ 2 0

kill @s
