scoreboard players add @s zombie.electric.aircraft.disperse.missile.particle 1

execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 1..3 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/0
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 4..6 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/1
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 7..9 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/2
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 10..12 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/3
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 13..15 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/4
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 16..18 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/3
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 19..21 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/2
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 22..24 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/1
execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 25..27 as @a rotated as @s rotated ~ ~90 run function zombie:skill/electric/aircraft/disperse/missile/particle/0

execute if score @s zombie.electric.aircraft.disperse.missile.particle matches 27 run scoreboard players set @s zombie.electric.aircraft.disperse.missile.particle 0
