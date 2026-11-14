tag @e[type=marker,tag=origin.sword.target.current] remove origin.sword.target.current
execute as @e[type=marker,tag=origin.sword.target] if score @s origin.owner = #owner origin.owner run tag @s add origin.sword.target.current
execute unless entity @e[type=marker,tag=origin.sword.target.current,limit=1] run return run function zombie:skill/creation/origin/sword/finish
execute at @s unless entity @e[type=marker,tag=origin.sword.target.current,distance=..0.5] facing entity @e[type=marker,tag=origin.sword.target.current,limit=1] feet run tp @s ^ ^ ^0.5
execute at @s if entity @e[type=marker,tag=origin.sword.target.current,distance=..0.5] run scoreboard players set @s origin.stage 2
execute if score @s origin.stage matches 2 run scoreboard players set @s origin.fx_age 0
tag @e[type=marker,tag=origin.sword.target.current] remove origin.sword.target.current
