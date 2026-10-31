# Input #add100 health.operation, units 0.01 HP. Keep pending same-tick clamps.
function player_stat:health/absorption/get
attribute @s max_absorption modifier remove zb:absorption_add
execute store result score #add_cap health.operation run attribute @s max_absorption get 100
execute if score #add_cap health.operation matches ..0 run scoreboard players set #add_cap health.operation 20000
scoreboard players operation #add_target health.operation = #abs100 health.operation
scoreboard players operation #add_target health.operation += #add100 health.operation
scoreboard players operation #add_target health.operation < #add_cap health.operation
execute if score #add_target health.operation <= #abs100 health.operation run return 0
# Level I omits amplifier entirely in saved NBT; it is still amplifier 0.
scoreboard players set #add_amp health.operation 49
execute if data entity @s active_effects[{id:"minecraft:absorption"}] run scoreboard players set #add_amp health.operation 0
execute if data entity @s active_effects[{id:"minecraft:absorption"}].amplifier store result score #add_amp health.operation run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier
execute if score #add_amp health.operation matches ..-1 run scoreboard players add #add_amp health.operation 256
execute store result storage player_stat absorption_add.amp int 1 run scoreboard players get #add_amp health.operation
function player_stat:health/absorption/add_apply with storage player_stat absorption_add
data remove storage player_stat absorption_add
