return fail
scoreboard players reset if round
$execute store result score if round run function zombie:zombie/$(id)
#$execute unless score if round matches 0 run tellraw @a [{text:"§around:§e$(round) §awave:§e$(wave0) §epass"}]
$execute if score if round matches 0 run tellraw @a [{text:"§around:§e$(round) §awave:§e$(wave0) §aid:§e$(id) §cdoes not exist"}]
execute as @e[distance=..8,type=!player] run function system:death
