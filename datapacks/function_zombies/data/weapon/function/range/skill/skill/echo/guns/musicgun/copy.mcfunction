execute store result storage weapon:echo copy.id int 1 run scoreboard players get @s uuid
execute store result storage weapon:echo copy.slot int 1 run scoreboard players get @s weapon.gun_echo_slot
data modify storage weapon:echo copy.gun set value "musicgun"
function weapon:range/skill/skill/echo/copy with storage weapon:echo copy
execute unless score #echo_copied weapon.state matches 1 run return 0
scoreboard players operation @s weapon.echo_type = uuid weapon.gun_musicgun
function weapon:range/skill/skill/echo/guns/musicgun/sync
scoreboard players operation @s weapon.gun_echo_clip_ammo < clip_ammo weapon.gun_musicgun
function weapon:range/skill/skill/echo/count
function inventory:item_store
