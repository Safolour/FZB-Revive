
execute if entity @s[type=player] as @e[type=armor_stand,tag=bar,tag=player_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run return fail
execute if entity @s[type=!player] as @e[type=armor_stand,tag=bar,tag=mob_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run return fail
summon armor_stand ~ ~2 ~ {Tags:["uuid","fire_reaction","bar","chosen"],CustomName:[{text:""}],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:0b}
scoreboard players operation @n[type=armor_stand,tag=chosen] area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid
scoreboard players set @n[type=armor_stand,tag=chosen] area.reaction.fire_bar 2
execute if entity @s[type=player] run tag @n[type=armor_stand,tag=chosen] add player_bar
execute if entity @s[type=!player] run tag @n[type=armor_stand,tag=chosen] add mob_bar
tag @e[type=armor_stand,tag=chosen,tag=bar] remove chosen
