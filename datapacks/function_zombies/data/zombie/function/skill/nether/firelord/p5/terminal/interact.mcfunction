execute unless entity @p[tag=chosen,scores={interaction.right_click=1..,stat.player=1,system.room=4..}] run return 0
scoreboard players set @p[tag=chosen,limit=1] interaction.right_click 0
execute unless data storage map:r40 p5_closed run return run tellraw @p[tag=chosen,limit=1] {translate:"zb.zombie.firelord.11.5"}
execute if entity @s[tag=fl.lever] run return run function zombie:skill/nether/firelord/p5/terminal/lever
execute if entity @s[tag=fl.damaged] run return 0
execute if entity @s[tag=fl.done] run return 0
execute if entity @s[tag=fl.busy] run return run tellraw @p[tag=chosen,limit=1] {translate:"zb.zombie.firelord.16"}
execute if entity @p[tag=chosen,tag=fl.using,limit=1] run return 0
# Existing terminals created before this update receive a type on first use.
execute unless score @s fl.mode = @s fl.mode store result score @s fl.mode run random value 0..3
tag @s add fl.busy
scoreboard players operation @s fl.owner = @p[tag=chosen,limit=1] uuid
scoreboard players operation @p[tag=chosen,limit=1] fl.id = @s fl.id
scoreboard players operation @p[tag=chosen,limit=1] fl.mode = @s fl.mode
execute as @p[tag=chosen,limit=1] at @s run function zombie:skill/nether/firelord/p5/terminal/begin
