tag @s remove weapon.res_cast
tag @s remove weapon.res_request
execute if entity @s[tag=weapon.res_rooted] run function weapon:range/gun/gun/resonance/skill/unroot
scoreboard players set @s weapon.res_regen 0
# Do not erase a stronger buff gained while casting.
scoreboard players set #res_speed weapon.state -1
execute store result score #res_speed weapon.state run data get entity @s active_effects[{id:"minecraft:speed"}].amplifier
execute if data entity @s active_effects[{id:"minecraft:speed"}] if score #res_speed weapon.state matches ..-1 run scoreboard players add #res_speed weapon.state 256
execute if score #res_speed weapon.state matches ..2 run function weapon:range/gun/gun/resonance/skill/speed_restore
# Restore the ORIGINAL hotbar slot, even if another weapon is now held.
execute store result storage weapon:resonance slot.slot int 1 run scoreboard players get @s weapon.res_slot
function weapon:range/gun/gun/resonance/skill/restore_slot with storage weapon:resonance slot
data remove storage weapon:resonance slot
scoreboard players reset @s weapon.res_age
