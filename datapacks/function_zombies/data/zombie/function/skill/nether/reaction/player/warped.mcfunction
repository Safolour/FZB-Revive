execute if entity @s[type=player] run function map:area/lab/reaction/fire/attribute_player_add {type:warped,source:player}
execute if entity @s[tag=mob] run function map:area/lab/reaction/fire/attribute_mob_add {type:warped,source:player}
