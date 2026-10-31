execute store result score @s zombie.electric.aircraft.fly run data get entity @s Pos[1]




execute if score @s[tag=skill.obviate] zombie.electric.aircraft.fly matches 98.. run tag @s[tag=!skill.obviate.fly.down] add skill.obviate.fly.down
execute if score @s[tag=skill.obviate] zombie.electric.aircraft.fly matches 98.. run tag @s remove skill.obviate.fly.up

execute if score @s[tag=skill.obviate] zombie.electric.aircraft.fly matches ..96 run tag @s[tag=!skill.obviate.fly.up] add skill.obviate.fly.up
execute if score @s[tag=skill.obviate] zombie.electric.aircraft.fly matches ..96 run tag @s remove skill.obviate.fly.down


execute if score @s[tag=skill.disperse] zombie.electric.aircraft.fly matches 101.. run tag @s[tag=!skill.obviate.fly.down] add skill.obviate.fly.down
execute if score @s[tag=skill.disperse] zombie.electric.aircraft.fly matches 101.. run tag @s remove skill.obviate.fly.up

execute if score @s[tag=skill.disperse] zombie.electric.aircraft.fly matches ..99 run tag @s[tag=!skill.obviate.fly.up] add skill.obviate.fly.up
execute if score @s[tag=skill.disperse] zombie.electric.aircraft.fly matches ..99 run tag @s remove skill.obviate.fly.down




execute if entity @s[tag=skill.obviate.fly.up] run effect give @s levitation 1 1 true
execute if entity @s[tag=skill.obviate.fly.up] run effect clear @s slow_falling
execute if entity @s[tag=skill.obviate.fly.down] run effect clear @s levitation
execute if entity @s[tag=skill.obviate.fly.down] run effect give @s slow_falling 1 1 true

scoreboard players add @s zombie.electric.aircraft.fly.skill_timer 1
execute if score @s zombie.electric.aircraft.fly.skill_timer matches 10 run function zombie:skill/electric/aircraft/obviate/fly/motion
execute if score @s zombie.electric.aircraft.fly.skill_timer matches 10 run scoreboard players reset @s zombie.electric.aircraft.fly.skill_timer

