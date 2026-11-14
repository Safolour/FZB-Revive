tag @s add fl.using
scoreboard players set @s fl.terminal 0
scoreboard players set @s fl.step 1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c1 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c1 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c2 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c2 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c3 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c3 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c4 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c4 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c5 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c5 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c6 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c6 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c7 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c7 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c8 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c8 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c9 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c9 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c10 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c10 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c11 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c11 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c12 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c12 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c13 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c13 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c14 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c14 run random value 0..1
execute if score @s fl.mode matches 0 run execute store result score @s fl.c15 run random value 0..4
execute if score @s fl.mode matches 1..4 run execute store result score @s fl.c15 run random value 0..1
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/1
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/2
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/3
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/4
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/5
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/6
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/7
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/8
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/9
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/10
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/11
execute if score @s fl.mode matches 2 run function zombie:skill/nether/firelord/p5/terminal/order/12
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c1 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c2 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c3 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c4 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c5 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c6 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c7 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c8 1
execute if score @s fl.mode matches 1 run scoreboard players set @s fl.c9 1
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c1 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c2 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c3 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c4 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c5 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c6 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c7 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c8 0
execute if score @s fl.mode matches 4 run scoreboard players set @s fl.c9 0
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 1 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 run execute store result score @s fl.click run random value 1..9
execute if score @s fl.mode matches 4 run function zombie:skill/nether/firelord/p5/terminal/lights
scoreboard players set @s fl.val 1
execute if score @s fl.mode matches 1 unless score @s fl.c1 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c1 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c2 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c2 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c3 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c3 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c4 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c4 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c5 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c5 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c6 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c6 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c7 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c7 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c8 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c8 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 unless score @s fl.c9 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 4 unless score @s fl.c9 matches 0 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 1 if score @s fl.val matches 1 run scoreboard players set @s fl.click 5
execute if score @s fl.mode matches 1 if score @s fl.val matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 if score @s fl.val matches 1 run scoreboard players set @s fl.click 5
execute if score @s fl.mode matches 4 if score @s fl.val matches 1 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 0 run scoreboard players set @s fl.val 1
execute if score @s fl.mode matches 0 unless score @s fl.c2 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c3 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c4 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c5 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c6 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c7 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c8 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c9 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 if score @s fl.val matches 1 run scoreboard players add @s fl.c1 1
execute if score @s fl.mode matches 0 if score @s fl.c1 matches 5.. run scoreboard players set @s fl.c1 0
execute if score @s fl.mode matches 3 run scoreboard players set @s fl.val 1
execute if score @s fl.mode matches 3 unless score @s fl.c1 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c2 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c3 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c4 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c5 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c6 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c7 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c8 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c9 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c10 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c11 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c12 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c13 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c14 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 unless score @s fl.c15 matches 1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 3 if score @s fl.val matches 1 run scoreboard players set @s fl.c1 0
scoreboard players set @s fl.click 0
function zombie:skill/nether/firelord/p5/terminal/show
