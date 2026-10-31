
scoreboard players add @s stat.window_repaired 1
tellraw @s [{translate:"zb.window.7",with:[{"score":{"name":"gold","objective":"window"},"color":"gold"}]}]
scoreboard players operation @s gold += gold window