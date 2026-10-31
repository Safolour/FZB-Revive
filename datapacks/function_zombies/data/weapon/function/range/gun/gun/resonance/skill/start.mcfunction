tag @s add weapon.res_cast
scoreboard players set @s weapon.res_age 0
scoreboard players set @s weapon.res_heal 0
scoreboard players set @s weapon.res_regen 0
scoreboard players set @s weapon.res_charge 1000
execute store result score @s weapon.res_slot run data get entity @s SelectedItemSlot
# Remember a pre-existing speed effect; stronger effects are never cleared.
scoreboard players set @s weapon.res_speed -1
scoreboard players set @s weapon.res_speed_t 0
execute if data entity @s active_effects[{id:"minecraft:speed"}] store result score @s weapon.res_speed run data get entity @s active_effects[{id:"minecraft:speed"}].amplifier
execute if data entity @s active_effects[{id:"minecraft:speed"}] if score @s weapon.res_speed matches ..-1 run scoreboard players add @s weapon.res_speed 256
execute store result score @s weapon.res_speed_t run data get entity @s active_effects[{id:"minecraft:speed"}].duration
# Replay: slowness amplifier 255, jump base -1 for the 20-tick windup.
scoreboard players set @s weapon.res_slow -1
scoreboard players set @s weapon.res_slow_t 0
execute if data entity @s active_effects[{id:"minecraft:slowness"}] store result score @s weapon.res_slow run data get entity @s active_effects[{id:"minecraft:slowness"}].amplifier
execute if data entity @s active_effects[{id:"minecraft:slowness"}] if score @s weapon.res_slow matches ..-1 run scoreboard players add @s weapon.res_slow 256
execute store result score @s weapon.res_slow_t run data get entity @s active_effects[{id:"minecraft:slowness"}].duration
execute store result score @s weapon.res_jump run attribute @s jump_strength base get 1000000
tag @s add weapon.res_rooted
attribute @s jump_strength base set -1
effect give @s slowness 5 255 true
playsound entity.wither.shoot player @a ~ ~ ~ 1.5 0 0
