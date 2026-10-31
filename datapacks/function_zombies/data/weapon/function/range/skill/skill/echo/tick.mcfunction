execute unless items entity @s container.* *[custom_data~{skill:"echo"}] run return 0
execute unless score @s weapon.echo_type = @s weapon.echo_type run function weapon:range/skill/skill/echo/init
execute store result score @s weapon.gun_echo_slot run data get entity @s Inventory[{components:{"minecraft:custom_data":{skill:"echo"}}}].Slot
scoreboard players remove @s[scores={weapon.gun_echo_rate=0..}] weapon.gun_echo_rate 1
scoreboard players remove @s[scores={weapon.gun_echo_reload=0..}] weapon.gun_echo_reload 1
scoreboard players set @s weapon.echo_busy 0
scoreboard players operation #echo_owner weapon.state = @s uuid
scoreboard players set #echo_busy weapon.state 0
execute as @e[type=marker,tag=echo_burst] if score @s weapon.gun_uuid = #echo_owner weapon.state run scoreboard players set #echo_busy weapon.state 1
scoreboard players operation @s weapon.echo_busy = #echo_busy weapon.state
# Off-hand / unselected Echo also updates. Reload and burst lock its type.
execute if score @s weapon.gun_echo_reload matches ..-1 if score @s weapon.gun_echo_rate matches ..0 if score @s weapon.echo_busy matches 0 unless score @s weapon.echo_type = @s weapon.echo_last run function weapon:range/skill/skill/echo/update
function weapon:range/skill/skill/echo/dispatch
