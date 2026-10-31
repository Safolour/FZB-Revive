particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle firework ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]

playsound entity.player.hurt record @a ~ ~ ~ 2 1
playsound entity.creeper.hurt record @a ~ ~ ~ 2 1
playsound entity.creeper.primed record @a ~ ~ ~ 2 1

execute as @p[scores={weapon.use=1..}] run effect give @s slowness 1 4 false
