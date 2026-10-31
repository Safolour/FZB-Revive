tag @s remove hitable
tag @s remove skill.obviate.shoot
tag @s remove skill.disperse.shoot

effect clear @s glowing
effect clear @s slow_falling
effect clear @s levitation

execute if entity @s[tag=skill.disperse] run attribute @s gravity base set 0.07

effect give @s slow_falling infinite 2 true
playsound block.beacon.deactivate record @a ~ ~ ~ 1.5 0
playsound block.beacon.deactivate record @a ~ ~ ~ 1.5 0
particle end_rod ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
playsound entity.zombie.attack_iron_door record @a ~ ~ ~ 1.5 0
