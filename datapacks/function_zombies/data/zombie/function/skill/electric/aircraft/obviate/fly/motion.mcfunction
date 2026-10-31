execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target

tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]

execute if entity @s[tag=skill.obviate] if entity @a[tag=target,distance=..10] run return run tag @a[tag=target] remove target
execute if entity @s[tag=skill.disperse] if entity @a[tag=target,distance=..15] run return run tag @a[tag=target] remove target

summon marker ^ ^ ^-10 {Tags:["mob.skill","skill.obviate.fly.motion","chosen"]}

execute store result score x zombie.electric.aircraft.fly run data get entity @e[type=marker,tag=chosen,limit=1] Pos[0]
execute store result score z zombie.electric.aircraft.fly run data get entity @e[type=marker,tag=chosen,limit=1] Pos[2]

execute store result score x0 zombie.electric.aircraft.fly run data get entity @s Pos[0]
execute store result score z0 zombie.electric.aircraft.fly run data get entity @s Pos[2]
scoreboard players operation x0 zombie.electric.aircraft.fly -= x zombie.electric.aircraft.fly
scoreboard players operation z0 zombie.electric.aircraft.fly -= z zombie.electric.aircraft.fly

execute store result storage zombie obviate.x float 0.02 run scoreboard players get x0 zombie.electric.aircraft.fly
execute store result storage zombie obviate.z float 0.02 run scoreboard players get z0 zombie.electric.aircraft.fly

function zombie:skill/electric/aircraft/obviate/fly/motion0 with storage zombie obviate

data remove storage zombie obviate
scoreboard players reset x zombie.electric.aircraft.fly
scoreboard players reset z zombie.electric.aircraft.fly
scoreboard players reset x0 zombie.electric.aircraft.fly
scoreboard players reset z0 zombie.electric.aircraft.fly
kill @e[type=marker,tag=chosen]
tag @a[tag=target] remove target
