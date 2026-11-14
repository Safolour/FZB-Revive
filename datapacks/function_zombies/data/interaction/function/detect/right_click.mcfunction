tag @s add target
scoreboard players set @s interaction.right_click 1
execute store result score player_uuid0 uuid0 run data get entity @s interaction.player[0]
execute store result score player_uuid1 uuid1 run data get entity @s interaction.player[1]
execute store result score player_uuid2 uuid2 run data get entity @s interaction.player[2]
execute store result score player_uuid3 uuid3 run data get entity @s interaction.player[3]
data remove entity @s interaction

execute as @a if score @s uuid0 = player_uuid0 uuid0 if score @s uuid1 = player_uuid1 uuid1 if score @s uuid2 = player_uuid2 uuid2 if score @s uuid3 = player_uuid3 uuid3 run tag @s add chosen
scoreboard players reset player_uuid0 uuid0
scoreboard players reset player_uuid1 uuid1
scoreboard players reset player_uuid2 uuid2
scoreboard players reset player_uuid3 uuid3

execute if entity @s[tag=setting.ultimate] run return run function mainlobby:setting/ultimate/direct

execute store result score count test run execute if entity @a[tag=chosen]

# 大交互实体截获了指向矿车的右键时，重建对应机器，让下次点击重新选中矿车。
execute if entity @s[tag=reload_capture,tag=lobby] as @p[tag=chosen] at @s anchored eyes positioned ^ ^ ^ run function interaction:minecart_repair/start
execute if entity @s[tag=interaction0,tag=shop,tag=perk] as @p[tag=chosen] at @s anchored eyes positioned ^ ^ ^ run function interaction:minecart_repair/start
execute if entity @s[tag=interaction0,tag=shop,tag=armor] as @p[tag=chosen] at @s anchored eyes positioned ^ ^ ^ run function interaction:minecart_repair/start
execute if entity @s[tag=setting.gear_capture] as @p[tag=chosen] at @s anchored eyes positioned ^ ^ ^ run function interaction:minecart_repair/start

execute as @p[tag=chosen] at @s run function interaction:interact/right_click
tag @s remove target

