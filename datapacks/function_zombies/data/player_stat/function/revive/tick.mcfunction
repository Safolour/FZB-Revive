
tag @s add chosen
scoreboard players operation uuid revive.uuid = @s uuid
execute as @e[type=armor_stand,tag=player_stat] if score @s revive.uuid = uuid revive.uuid run scoreboard players set @s revive 2

scoreboard players set @s revive.revive_target0 0
execute unless score @s revive.revive_target matches 1.. as @p[scores={stat.player=1},predicate=!map:is_sneaking,distance=..2.5] unless score @s revive.revive_target matches 1.. run scoreboard players set @s revive.actionbar 1
execute unless score @s revive.revive_target matches 1.. as @p[scores={stat.player=1},predicate=!map:is_sneaking,distance=..2.5] unless score @s revive.revive_target matches 1.. run scoreboard players set @s[scores={system.actionbar=1..}] system.actionbar 1
execute unless score @s revive.revive_target matches 1.. as @p[scores={stat.player=1},predicate=!map:is_sneaking,distance=..2.5] unless score @s revive.revive_target matches 1.. run title @s[scores={system.actionbar=1,system.room=4..,title.color.enable=0}] actionbar [{translate:"zb.revive.actionbar.0",with:[{selector:"@p[tag=chosen]"}]}]
execute unless score @s revive.revive_target matches 1.. as @p[scores={stat.player=1},predicate=map:is_sneaking,distance=..2.5] unless score @s revive.revive_target matches 1.. run function player_stat:revive/revive_start
execute if score @s revive.revive_target matches 1.. run scoreboard players operation uuid revive.revive_target = @s uuid
execute if score @s revive.revive_target matches 1.. run title @s[scores={system.room=4..,title.color.enable=0}] times 0 2 0
execute if score @s revive.revive_target matches 1.. run title @s[scores={system.room=4..,title.color.enable=0}] title [{translate:zb.revive.title.1}]
execute if score @s revive.revive_target matches 1.. as @a[scores={stat.player=1},predicate=map:is_sneaking,distance=..2.5] if score @s revive.revive_target = uuid revive.revive_target run scoreboard players set @p[tag=chosen] revive.revive_target0 1
execute if score @s revive.revive_target matches 1.. if score @s revive.revive_target0 matches 0 run function player_stat:revive/revive_stop

scoreboard players set @s revive.ride 0
execute on vehicle if entity @s[scores={revive=2}] run scoreboard players set @p[tag=chosen] revive.ride 1
execute unless entity @s[scores={revive.ride=1}] at @s run function player_stat:revive/reride

execute unless entity @s[scores={revive.revive_target=1..}] if entity @s[scores={revive.timer=0}] run function player_stat:revive/death
execute if entity @s[scores={revive.revive_target=1..}] if entity @s[scores={revive.timer=0}] run function player_stat:revive/revive
scoreboard players remove @s[scores={revive.timer=1..}] revive.timer 1
scoreboard players operation time revive.timer = @s revive.timer
execute as @e[type=armor_stand,tag=player_stat,tag=text3,scores={revive=2}] run function player_stat:revive/time

scoreboard players set @e[type=armor_stand,tag=player_stat,scores={revive=2}] revive 1
tag @s remove chosen