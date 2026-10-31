
execute if entity @s[tag=skill.disperse] run return run function zombie:skill/electric/aircraft/obviate/particle/tick0

scoreboard players add @s zombie.electric.aircraft.particle 1

execute if score @s zombie.electric.aircraft.particle matches 1 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 6 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 11 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 16 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 21 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 26 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 31 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 36 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.electric.aircraft.particle matches 40 run playsound minecraft:entity.vex.ambient record @a ~ ~ ~ 2 0

execute if score @s zombie.electric.aircraft.particle matches 41 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 46 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 51 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 56 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 61 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 66 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 71 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.electric.aircraft.particle matches 76 run particle falling_lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.electric.aircraft.particle matches 80 run playsound minecraft:entity.vex.ambient record @a ~ ~ ~ 2 0

execute if score @s zombie.electric.aircraft.particle matches 80.. run scoreboard players set @s zombie.electric.aircraft.particle 0
