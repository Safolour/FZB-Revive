
scoreboard players add tick round 1
execute if score tick round matches 1 run tellraw @s [{translate:zb.debug.round.tellraw.2}]
execute if score tick round matches 2 run tellraw @s [{translate:zb.debug.round.tellraw.1}]
execute if score tick round matches 2.. run scoreboard players set tick round 0