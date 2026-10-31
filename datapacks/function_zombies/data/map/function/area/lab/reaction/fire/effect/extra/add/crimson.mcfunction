
execute if entity @s[type=player] run function map:area/lab/reaction/fire/attribute_player_add {type:crimson,source:mob}
execute if entity @s[tag=mob] run function map:area/lab/reaction/fire/attribute_mob_add {type:crimson,source:mob}

function map:area/lab/reaction/fire/effect/extra/particle/negative/crimson
