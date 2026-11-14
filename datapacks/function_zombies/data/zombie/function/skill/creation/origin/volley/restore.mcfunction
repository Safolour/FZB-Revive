tag @e[type=marker,tag=origin.volley.current] remove origin.volley.current
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.volley.state] if score @s origin.owner = #owner origin.owner run tag @s add origin.volley.current
execute unless entity @e[type=marker,tag=origin.volley.current] run return 0
item replace entity @s weapon.mainhand with air
execute if data entity @e[type=marker,tag=origin.volley.current,limit=1] data.item run data modify entity @s equipment.mainhand set from entity @e[type=marker,tag=origin.volley.current,limit=1] data.item
kill @e[type=marker,tag=origin.volley.current]
