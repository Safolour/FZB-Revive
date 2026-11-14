scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.tool.state] if score @s origin.owner = #owner origin.owner run kill @s
summon marker ~ ~ ~ {Tags:["origin.combat_fx","origin.tool.state","origin.tool.state.new"],data:{no_ai:0b,glowing:0b}}
scoreboard players operation @e[type=marker,tag=origin.tool.state.new,limit=1] origin.owner = @s origin.owner
data modify entity @e[type=marker,tag=origin.tool.state.new,limit=1] data.item set from entity @s equipment.mainhand
function zombie:skill/creation/origin/tool_save_team
data modify entity @e[type=marker,tag=origin.tool.state.new,limit=1] data.no_ai set from entity @s NoAI
data modify entity @e[type=marker,tag=origin.tool.state.new,limit=1] data.glowing set from entity @s Glowing
tag @e[type=marker,tag=origin.tool.state.new] remove origin.tool.state.new
