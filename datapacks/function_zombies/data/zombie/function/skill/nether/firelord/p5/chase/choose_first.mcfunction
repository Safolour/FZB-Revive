execute store result score #p5choice fl.val run random value 0..1
scoreboard players set @s fl.id 100
execute if score #p5choice fl.val matches 1 run scoreboard players set @s fl.id 200
execute if data storage map:r40 {doors:{"1a":2b}} unless data storage map:r40 {doors:{"1b":2b}} run scoreboard players set @s fl.id 100
execute if data storage map:r40 {doors:{"1b":2b}} unless data storage map:r40 {doors:{"1a":2b}} run scoreboard players set @s fl.id 200
execute unless data storage map:r40 {doors:{"1a":2b}} unless data storage map:r40 {doors:{"1b":2b}} if data storage map:r40 {doors:{"1a":1b}} unless data storage map:r40 {doors:{"1b":1b}} run scoreboard players set @s fl.id 100
execute unless data storage map:r40 {doors:{"1a":2b}} unless data storage map:r40 {doors:{"1b":2b}} if data storage map:r40 {doors:{"1b":1b}} unless data storage map:r40 {doors:{"1a":1b}} run scoreboard players set @s fl.id 200
tag @s remove firelord.p5.first_east
execute if score @s fl.id matches 100 run tag @s add firelord.p5.first_east
