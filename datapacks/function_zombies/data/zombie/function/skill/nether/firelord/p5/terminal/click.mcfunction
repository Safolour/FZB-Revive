execute if score @s fl.terminal matches -1 run return run function zombie:skill/nether/firelord/p5/terminal/exit
scoreboard players operation @s fl.click = @s fl.terminal
scoreboard players set @s fl.terminal 0
execute unless score @s fl.click matches 1..15 run return 0
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
execute if score @s fl.mode matches 0 if score @s fl.click matches 1 run scoreboard players add @s fl.c1 1
execute if score @s fl.mode matches 0 if score @s fl.c1 matches 5.. run scoreboard players set @s fl.c1 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 1 run scoreboard players set @s fl.c1 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 1 if score @s fl.c1 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 2 run scoreboard players add @s fl.c2 1
execute if score @s fl.mode matches 0 if score @s fl.c2 matches 5.. run scoreboard players set @s fl.c2 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 2 run scoreboard players set @s fl.c2 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 2 if score @s fl.c2 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 3 run scoreboard players add @s fl.c3 1
execute if score @s fl.mode matches 0 if score @s fl.c3 matches 5.. run scoreboard players set @s fl.c3 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 3 run scoreboard players set @s fl.c3 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 3 if score @s fl.c3 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 4 run scoreboard players add @s fl.c4 1
execute if score @s fl.mode matches 0 if score @s fl.c4 matches 5.. run scoreboard players set @s fl.c4 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 4 run scoreboard players set @s fl.c4 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 4 if score @s fl.c4 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 5 run scoreboard players add @s fl.c5 1
execute if score @s fl.mode matches 0 if score @s fl.c5 matches 5.. run scoreboard players set @s fl.c5 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 5 run scoreboard players set @s fl.c5 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 5 if score @s fl.c5 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 6 run scoreboard players add @s fl.c6 1
execute if score @s fl.mode matches 0 if score @s fl.c6 matches 5.. run scoreboard players set @s fl.c6 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 6 run scoreboard players set @s fl.c6 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 6 if score @s fl.c6 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 7 run scoreboard players add @s fl.c7 1
execute if score @s fl.mode matches 0 if score @s fl.c7 matches 5.. run scoreboard players set @s fl.c7 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 7 run scoreboard players set @s fl.c7 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 7 if score @s fl.c7 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 8 run scoreboard players add @s fl.c8 1
execute if score @s fl.mode matches 0 if score @s fl.c8 matches 5.. run scoreboard players set @s fl.c8 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 8 run scoreboard players set @s fl.c8 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 8 if score @s fl.c8 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 9 run scoreboard players add @s fl.c9 1
execute if score @s fl.mode matches 0 if score @s fl.c9 matches 5.. run scoreboard players set @s fl.c9 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 9 run scoreboard players set @s fl.c9 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 9 if score @s fl.c9 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 10 run scoreboard players add @s fl.c10 1
execute if score @s fl.mode matches 0 if score @s fl.c10 matches 5.. run scoreboard players set @s fl.c10 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 10 run scoreboard players set @s fl.c10 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 10 if score @s fl.c10 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 11 run scoreboard players add @s fl.c11 1
execute if score @s fl.mode matches 0 if score @s fl.c11 matches 5.. run scoreboard players set @s fl.c11 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 11 run scoreboard players set @s fl.c11 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 11 if score @s fl.c11 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 12 run scoreboard players add @s fl.c12 1
execute if score @s fl.mode matches 0 if score @s fl.c12 matches 5.. run scoreboard players set @s fl.c12 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 12 run scoreboard players set @s fl.c12 1
execute if score @s fl.mode matches 2 if score @s fl.click matches 12 if score @s fl.c12 = @s fl.step run scoreboard players add @s fl.step 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 13 run scoreboard players add @s fl.c13 1
execute if score @s fl.mode matches 0 if score @s fl.c13 matches 5.. run scoreboard players set @s fl.c13 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 13 run scoreboard players set @s fl.c13 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 14 run scoreboard players add @s fl.c14 1
execute if score @s fl.mode matches 0 if score @s fl.c14 matches 5.. run scoreboard players set @s fl.c14 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 14 run scoreboard players set @s fl.c14 1
execute if score @s fl.mode matches 0 if score @s fl.click matches 15 run scoreboard players add @s fl.c15 1
execute if score @s fl.mode matches 0 if score @s fl.c15 matches 5.. run scoreboard players set @s fl.c15 0
execute if score @s fl.mode matches 3 if score @s fl.click matches 15 run scoreboard players set @s fl.c15 1
execute if score @s fl.mode matches 1 if score @s fl.click matches 1..9 run function zombie:skill/nether/firelord/p5/terminal/lights
execute if score @s fl.mode matches 4 if score @s fl.click matches 1..9 run function zombie:skill/nether/firelord/p5/terminal/lights
scoreboard players set @s fl.val 1
execute if score @s fl.mode matches 0 unless score @s fl.c2 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c3 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c4 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c5 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c6 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c7 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c8 = @s fl.c1 run scoreboard players set @s fl.val 0
execute if score @s fl.mode matches 0 unless score @s fl.c9 = @s fl.c1 run scoreboard players set @s fl.val 0
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
execute if score @s fl.mode matches 2 unless score @s fl.step matches 13.. run scoreboard players set @s fl.val 0
execute if score @s fl.val matches 1 run return run function zombie:skill/nether/firelord/p5/terminal/complete
function zombie:skill/nether/firelord/p5/terminal/show
