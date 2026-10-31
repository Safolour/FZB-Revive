
tag @s add chosen

execute on attacker if entity @s[tag=crimson] as @p[tag=chosen] run function map:area/lab/reaction/fire/attribute_player_add {type:crimson,source:mob}
execute on attacker if entity @s[tag=warped] as @p[tag=chosen] run function map:area/lab/reaction/fire/attribute_player_add {type:warped,source:mob}
execute on attacker if entity @s[tag=ashes] as @p[tag=chosen] run function map:area/lab/reaction/fire/attribute_player_add {type:ashes,source:mob}
execute on attacker if entity @s[tag=spirit] as @p[tag=chosen] run function map:area/lab/reaction/fire/attribute_player_add {type:spirit,source:mob}

tag @s remove chosen