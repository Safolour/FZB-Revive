
scoreboard players operation match zombie.creation.electrification.match = @s zombie.creation.electrification.match
execute as @e[type=zombie,tag=skill.creation.electrification.beam] if score @s zombie.creation.electrification.match = match zombie.creation.electrification.match run tag @s add target
scoreboard players reset match zombie.creation.electrification.match
execute unless entity @e[type=zombie,tag=target] run kill @s

execute if score @s zombie.creation.electrification matches 1 run particle sonic_boom ~ ~ ~
execute if score @s zombie.creation.electrification matches 10 run playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 2
execute if score @s zombie.creation.electrification matches 10 run playsound block.beacon.activate record @a ~ ~ ~ 2 1
execute if score @s zombie.creation.electrification matches 10 run particle flash ~ ~ ~

execute if score @s zombie.creation.electrification matches 10.. run function zombie:skill/creation/electrification/beam

scoreboard players add @s zombie.creation.electrification 1
execute if score @s zombie.creation.electrification matches ..40 run return run tag @e[type=zombie,tag=target] remove target

scoreboard players reset @n[type=zombie,tag=target] zombie.creation.electrification.match
effect clear @n[type=zombie,tag=target]
tag @n[type=zombie,tag=target] remove skill.creation.electrification.beam
scoreboard players set @n[type=zombie,tag=target] zombie.knockresistance 0
effect clear @n[type=zombie,tag=target] glowing
data merge entity @n[type=zombie,tag=target] {NoAI:0b}
tag @n[type=zombie,tag=target] remove cantgyro
tag @n[type=zombie,tag=target] remove target
scoreboard players reset @s zombie.creation.electrification
kill @s
