scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.volley.state] if score @s origin.owner = #owner origin.owner run kill @s
summon marker ~ ~ ~ {Tags:["origin.combat_fx","origin.volley.state","origin.volley.new"],data:{}}
scoreboard players operation @e[type=marker,tag=origin.volley.new,limit=1] origin.owner = @s origin.owner
data modify entity @e[type=marker,tag=origin.volley.new,limit=1] data.item set from entity @s equipment.mainhand
tag @e[type=marker,tag=origin.volley.new] remove origin.volley.new
