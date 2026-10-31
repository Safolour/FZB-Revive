data merge entity @s {Motion:[0,0.5,2]}

playsound entity.snow_golem.shoot record @a ~ ~ ~ 2 0
playsound entity.snow_golem.shoot record @a ~ ~ ~ 2 0

particle explosion ~ ~ ~ 0 0 0 0 2 force @a[scores={particle=0}]
particle cloud ~ ~0.5 ~ 0.3 0 0.3 0 20 force @a[scores={particle=0}]
