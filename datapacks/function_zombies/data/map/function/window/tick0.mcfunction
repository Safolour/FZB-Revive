
execute unless score @s window = @s window run scoreboard players set @s window 0
execute unless score @s window.piece = @s window.piece run scoreboard players set @s window.piece 0
execute unless score @s window.piece0 = @s window.piece0 run scoreboard players set @s window.piece0 0

function map:window/detect_mob
execute if score @s window matches 0 run function map:window/detect_player
execute if score @s window matches 1 run function map:window/detect_player0

scoreboard players set @s[scores={window.piece=..-1}] window.piece 0
scoreboard players set @s[scores={window.piece=7..}] window.piece 6
execute if score @s window.piece0 < @s window.piece run function map:window/repair
execute if score @s window.piece0 > @s window.piece run function map:window/break

tag @s[tag=sound] remove sound