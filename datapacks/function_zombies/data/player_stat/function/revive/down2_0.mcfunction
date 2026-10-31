
scoreboard players operation uuid uuid = @s uuid
function player_stat:revive/playe_model
summon armor_stand ~ ~ ~ {Tags:["player_stat","revive","down","ride","chosen"],Invisible:1b,Marker:1b,Small:1b}
summon armor_stand ~ ~2.5 ~ {CustomName:[{translate:"zb.revive.text.0"}],Tags:["player_stat","revive","down",text,"text0","chosen"],Invisible:1b,Marker:1b,Small:1b,CustomNameVisible:1b}
summon armor_stand ~ ~2.25 ~ {CustomName:[{translate:"zb.revive.text.1"}],Tags:["player_stat","revive","down",text,"text1","chosen"],Invisible:1b,Marker:1b,Small:1b,CustomNameVisible:1b}
summon armor_stand ~ ~2 ~ {CustomName:[{translate:"zb.revive.text.2"}],Tags:["player_stat","revive","down",text,"text2","chosen"],Invisible:1b,Marker:1b,Small:1b,CustomNameVisible:1b}
summon armor_stand ~ ~1.75 ~ {CustomName:[{text:""}],Tags:["player_stat","revive","down",text,"text3","chosen"],Invisible:1b,Marker:1b,Small:1b,CustomNameVisible:1b}
scoreboard players operation @e[type=armor_stand,tag=player_stat,tag=chosen] revive.uuid = uuid uuid
scoreboard players set @e[type=armor_stand,tag=player_stat,tag=chosen] revive 2

ride @s mount @n[type=armor_stand,tag=player_stat,tag=ride,tag=chosen]
scoreboard players operation @s revive.timer = death.time revive.timer
tag @e[type=armor_stand,tag=player_stat,tag=chosen] remove chosen