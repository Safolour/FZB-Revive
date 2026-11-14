
execute if entity @s[tag=mob] unless score @s zombie.uuid = @s zombie.uuid run function zombie:summon_uuid
function animated_java:tick0
function inventory:tick0
execute if entity @s[type=item,tag=!display,nbt={Item:{components:{"minecraft:custom_data":{tag:["clear"]}}}}] run function inventory:throw_item
execute if entity @s[type=interaction] run function interaction:tick1
execute if entity @s[type=slime,tag=interaction] run function interaction:tick2

execute if entity @s[tag=player_stat] run function player_stat:tick0
function decoration:lobby/tick1

function map:tick1

scoreboard players set @s[tag=window_break,scores={window.timer=1..},tag=!breaking0] window.timer 0
tag @s[tag=breaking0] remove breaking0

function weapon:tick1

execute if entity @s[tag=mob] run function zombie:tick
execute if entity @s[tag=mob.skill] run function zombie:tick0

scoreboard players set @s[scores={interaction.left_click=1..}] interaction.left_click 0
scoreboard players set @s[scores={interaction.right_click=1..}] interaction.right_click 0



execute if entity @s[tag=origin.fx] run function zombie:skill/creation/origin/cleanup_tick
execute if entity @s[tag=origin.destination] run function zombie:skill/creation/origin/cleanup_tick
execute if entity @s[tag=origin.combat_fx] at @s run function zombie:skill/creation/origin/combat_fx_tick
execute if entity @s[type=marker,tag=titan.sword.anchor] at @s run function zombie:skill/creation/titan/fx_tick
execute if entity @s[type=marker,tag=titan.lightning.controller] at @s run function zombie:skill/creation/titan/fx_tick
execute if entity @s[type=marker,tag=titan.lightning.target] at @s run function zombie:skill/creation/titan/fx_tick
execute if entity @s[type=marker,tag=titan.eclipse.death.ray] at @s run function zombie:skill/creation/titan/eclipse/death_fx/ray_tick
