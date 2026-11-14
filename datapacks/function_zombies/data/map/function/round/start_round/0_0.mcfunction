
execute if entity @s[scores={stat.player=2..3}] run function player_stat:revive/revive_self0
execute unless data storage map:r40 portal_transition run title @s title reset
execute unless data storage map:r40 portal_transition run title @s times 20 100 20
execute unless data storage map:r40 portal_transition run title @s[scores={system.room=4..,title.color.enable=0}] title [{translate:zb.game.round.title.0,with:[{score:{name:"round",objective:game.state},color:red}]}]
execute unless data storage map:r40 portal_transition run title @s[scores={system.room=4..,title.color.enable=0}] subtitle [{text:""}]

execute if score nostartsound round matches 1 run return fail
execute at @s run playsound entity.wither.spawn record @s ~ ~ ~ 1 0 0
