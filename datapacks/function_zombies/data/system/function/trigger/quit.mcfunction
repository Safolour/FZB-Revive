
scoreboard players set @s quit 0
execute unless entity @s[scores={system.room=4..}] run tellraw @s [{translate:zb.quit.tellraw.1}]
execute if entity @s[scores={system.room=4..}] run function map:game/quit