
scoreboard players operation @s bs.hmod += @s bs.health0
execute if entity @s[scores={bs.ctx=2}] run function bs.health:utils/on_heal
scoreboard players set @s bs.ctx 0