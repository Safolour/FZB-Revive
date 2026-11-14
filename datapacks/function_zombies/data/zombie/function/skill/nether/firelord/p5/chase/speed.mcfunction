# Classify the ghast and every eligible player with the same independent XZ bounds.
function zombie:skill/nether/firelord/p5/chase/room
scoreboard players operation #p5room fl.total = @s fl.room
scoreboard players operation #p5stage fl.total = @s fl.room_order
scoreboard players set #p5present fl.total 0
scoreboard players set #p5alive fl.total 0
scoreboard players set #p5last fl.total 99
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1}] at @s run function zombie:skill/nether/firelord/p5/chase/room
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1}] run scoreboard players add #p5alive fl.total 1
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1,fl.room=1..}] if score @s fl.room = #p5room fl.total run scoreboard players set #p5present fl.total 1
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1,fl.room_order=1..}] run scoreboard players operation #p5last fl.total < @s fl.room_order
# Undefined rooms stay out of room-based acceleration until the user supplies their bounds.
tag @s remove firelord.p5.fast
execute if score @s fl.room matches 1.. if score #p5present fl.total matches 0 run tag @s add firelord.p5.fast
execute if score @s fl.room matches 1.. unless score #p5stage fl.total = #p5last fl.total run tag @s add firelord.p5.fast
scoreboard players set @s fl.val 35
execute if score #p5alive fl.total matches ..1 run scoreboard players set @s fl.val 15
execute if score @s fl.mode matches 1.. run scoreboard players set @s fl.val 10
execute if entity @s[tag=firelord.p5.fast] run scoreboard players set @s fl.val 75
