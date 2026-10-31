
execute if entity @s[name=XMM010,scores={interaction.zhf=1}] run scoreboard players set @s interaction.right_click 1
execute if entity @s[name=_447,scores={interaction.zhf=1}] run scoreboard players set @s interaction.right_click 1
execute if entity @s[name=emRchs,scores={interaction.zhf=1}] run scoreboard players set @s interaction.right_click 1

execute if entity @s[tag=debug] run return fail
execute if entity @s[gamemode=spectator] run return fail
tag @s add chosen
scoreboard players operation uuid uuid = @s uuid
execute as @e[tag=interaction] if score @s uuid = uuid uuid run tag @s add target
scoreboard players set @e[tag=interaction,tag=target] interaction.state 3
scoreboard players set @e[type=interaction,tag=interaction,tag=target] interaction.state 2
execute if entity @e[type=chest_minecart,tag=minecart,tag=precedence,distance=..4.5] run scoreboard players set @n[type=interaction,tag=interaction,tag=target] interaction.state 3
execute if items entity @s weapon *[custom_data~{tag:["right_click"]}] run scoreboard players set @n[type=slime,tag=interaction,tag=target] interaction.state 2
execute unless entity @e[type=interaction,tag=interaction,tag=target,scores={interaction.state=2..}] run function interaction:summon
execute if items entity @s weapon *[custom_data~{tag:["right_click"]}] unless entity @e[type=slime,tag=interaction,tag=target,scores={interaction.state=2..}] run function interaction:summon0
#execute if items entity @s weapon *[custom_data~{tag:["right_click"]}] run function interaction:summon0
execute anchored eyes positioned ^ ^ ^0.125 as @e[scores={interaction.state=2..},tag=target] run function interaction:tp
tag @s remove chosen
tag @e[tag=interaction,tag=target] remove target