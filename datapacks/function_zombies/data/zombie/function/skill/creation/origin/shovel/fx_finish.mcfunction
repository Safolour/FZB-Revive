scoreboard players operation #fx origin.fx_id = @s origin.fx_id
execute as @e[tag=origin.shovel.model] if score @s origin.fx_id = #fx origin.fx_id run kill @s
execute as @e[type=marker,tag=origin.shovel.hitmark] if score @s origin.fx_id = #fx origin.fx_id run kill @s
kill @s
