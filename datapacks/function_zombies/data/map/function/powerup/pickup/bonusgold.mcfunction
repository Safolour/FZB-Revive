
scoreboard players operation gold powerup = bonusgold powerup.gold
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold powerup *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold powerup *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold powerup *= 4 number
execute as @a[scores={system.room=4..}] run scoreboard players operation @s gold += gold powerup
function map:powerup/presentation/effect/bonusgold {players:"@a[scores={system.room=4..}]",gold_holder:"gold",objective:"powerup"}
