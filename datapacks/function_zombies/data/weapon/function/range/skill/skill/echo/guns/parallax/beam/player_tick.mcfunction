scoreboard players set @s weapon.parallax_mode 0
execute if predicate map:is_sneaking run scoreboard players set @s weapon.parallax_mode 1
scoreboard players set @s weapon.parallax_sneak 0
execute if predicate map:is_sneaking run scoreboard players set @s weapon.parallax_sneak 1
scoreboard players operation #parallax_owner weapon.state = @s uuid
execute as @e[tag=parallax_beam] if score @s weapon.gun_uuid = #parallax_owner weapon.state run tag @s add parallax_current
execute unless items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"parallax"}] unless items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"parallax"}] run scoreboard players set @s weapon.parallax_lease 0
execute if score @s stat.player matches 2..3 run scoreboard players set @s weapon.parallax_lease 0
execute unless score @s weapon.parallax_lease matches 1.. run return run kill @e[tag=parallax_current]
scoreboard players remove @s weapon.parallax_lease 1
execute anchored eyes positioned ^ ^ ^1 as @e[tag=parallax_current,limit=1] run tp @s ~ ~ ~ facing ^ ^ ^1
execute if score @s weapon.parallax_mode matches 0 run data modify entity @e[tag=parallax_current,limit=1] item.components."minecraft:item_model" set value "custom:parallax"
execute if score @s weapon.parallax_mode matches 1 run data modify entity @e[tag=parallax_current,limit=1] item.components."minecraft:item_model" set value "custom:parallax0"
tag @s add parallax_owner
scoreboard players operation #parallax_previous weapon.state = @s weapon.use
scoreboard players operation @s weapon.use = uuid weapon.gun_parallax
scoreboard players set #parallax_damage weapon.state 0
scoreboard players operation #parallax_mode weapon.state = @s weapon.parallax_mode
execute unless score @s weapon.gun_echo_rate matches 1.. run scoreboard players set #parallax_damage weapon.state 1
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["parallax_trace"]}
scoreboard players set #parallax_length weapon.state 0
execute as @e[tag=parallax_trace,limit=1] at @s rotated as @a[tag=parallax_owner,limit=1] facing ^ ^ ^1 run function weapon:range/gun/gun/parallax/beam/trace_start
kill @e[tag=parallax_trace]
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run function weapon:range/skill/skill/echo/guns/parallax/sync
execute if score #parallax_damage weapon.state matches 1 run scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = #parallax_previous weapon.state
tag @s remove parallax_owner
execute store result entity @e[tag=parallax_current,limit=1] transformation.scale[2] float 0.5 run scoreboard players get #parallax_length weapon.state
tag @e[tag=parallax_current] remove parallax_current
scoreboard players reset #parallax_mode weapon.state
