execute store result score #p5choice fl.val run random value 0..1
scoreboard players set @s fl.id 400
execute if score #p5choice fl.val matches 1 run scoreboard players set @s fl.id 500
execute if data storage map:r40 {doors:{"4a":2b}} unless data storage map:r40 {doors:{"4b":2b}} run scoreboard players set @s fl.id 400
execute if data storage map:r40 {doors:{"4b":2b}} unless data storage map:r40 {doors:{"4a":2b}} run scoreboard players set @s fl.id 500
execute unless data storage map:r40 {doors:{"4a":2b}} unless data storage map:r40 {doors:{"4b":2b}} if data storage map:r40 {doors:{"4a":1b}} unless data storage map:r40 {doors:{"4b":1b}} run scoreboard players set @s fl.id 400
execute unless data storage map:r40 {doors:{"4a":2b}} unless data storage map:r40 {doors:{"4b":2b}} if data storage map:r40 {doors:{"4b":1b}} unless data storage map:r40 {doors:{"4a":1b}} run scoreboard players set @s fl.id 500
execute if entity @s[tag=firelord.p5.first_east] if score @s fl.id matches 400 run scoreboard players set @s fl.id 450
execute if entity @s[tag=firelord.p5.first_east] if score @s fl.id matches 500 run scoreboard players set @s fl.id 550
