tag @e[type=marker,tag=origin.tool.state.current] remove origin.tool.state.current
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.tool.state] if score @s origin.owner = #owner origin.owner run tag @s add origin.tool.state.current
execute unless entity @e[type=marker,tag=origin.tool.state.current] run return 0
item replace entity @s weapon.mainhand with air
execute if data entity @e[type=marker,tag=origin.tool.state.current,limit=1] data.item run data modify entity @s equipment.mainhand set from entity @e[type=marker,tag=origin.tool.state.current,limit=1] data.item
data modify entity @s NoAI set from entity @e[type=marker,tag=origin.tool.state.current,limit=1] data.no_ai
data modify entity @s Glowing set from entity @e[type=marker,tag=origin.tool.state.current,limit=1] data.glowing
team leave @s
execute if data entity @e[type=marker,tag=origin.tool.state.current,limit=1] data.team run function zombie:skill/creation/origin/tool_restore_team with entity @e[type=marker,tag=origin.tool.state.current,limit=1] data
kill @e[type=marker,tag=origin.tool.state.current]
