# The separate 16-damage widened melee remains in melee/tick.
function zombie:skill/creation/titan/melee/native_disable
execute unless score @s titan.basic_cd = @s titan.basic_cd run scoreboard players set @s titan.basic_cd 20
scoreboard players remove @s titan.basic_cd 1
execute if data entity @s {NoAI:1b} run return 0
execute if data entity @s {Invisible:1b} run return 0
execute if entity @s[tag=titan.awaiting] run return 0
execute if entity @s[tag=titan.tp.active] run return 0
execute if entity @s[tag=titan.eclipse.cast] run return 0
execute if entity @s[tag=titan.scatter.cast] run return 0
execute if entity @s[tag=titan.sword.cast] run return 0
execute if entity @s[tag=titan.lightning.cast] run return 0
execute unless score @s titan.basic_cd matches ..0 run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2] run return 0
scoreboard players set @s titan.basic_cd 20
scoreboard players set #titan.basic.ray titan.cfg 0
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2,sort=nearest,limit=1] positioned ~ ~1.3 ~ facing entity @s eyes run function zombie:skill/creation/titan/melee/ordinary_line
