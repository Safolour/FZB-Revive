scoreboard players operation #fx origin.fx_id = @s origin.fx_id
execute as @e[tag=origin.laser.model] if score @s origin.fx_id = #fx origin.fx_id run kill @s
execute as @e[type=marker,tag=origin.laser.hitmark] if score @s origin.fx_id = #fx origin.fx_id run kill @s
kill @s
