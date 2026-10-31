particle lava ~ ~ ~ 0 0 0 0 3 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.1 3 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
particle bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 10 force @a[scores={particle=0}]

playsound entity.player.hurt_on_fire record @a ~ ~ ~ 2 1
playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 2
playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 2
#playsound entity.firework_rocket.launch record @a ~ ~ ~ 2 2

execute positioned ~ ~ ~ run function zombie:skill/machine/lamda/skill/shoot/bullet/spawn
