effect clear @s glowing
scoreboard players set @s zombie.electric.aircraft.flash 0
team join mob @s

execute if entity @s[tag=skill.obviate] run particle wax_on ~ ~1 ~ 0.3 0.3 0.3 0.5 10 force @a[scores={particle=0}]
execute if entity @s[tag=skill.obviate] run playsound block.note_block.bit record @a ~ ~ ~ 1 2

execute if entity @s[tag=skill.disperse] run particle wax_off ~ ~1 ~ 0.4 0.4 0.4 0.5 15 force @a[scores={particle=0}]
execute if entity @s[tag=skill.disperse] run playsound block.note_block.bit record @a ~ ~ ~ 1 1.8

