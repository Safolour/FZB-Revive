
scoreboard players operation uuid uuid = @s uuid
execute as @e[type=item_display,tag=aj.player_display.root] if score @s revive.player_model.uuid = uuid uuid run function player_stat:revive/playe_model_remove1