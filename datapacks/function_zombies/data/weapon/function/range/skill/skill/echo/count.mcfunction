# Keep the skill stack at count 1 while its independent magazine is empty.
scoreboard players set @s inventory 2
execute store result storage weapon:echo count.slot int 1 run scoreboard players get @s weapon.gun_echo_slot
scoreboard players operation #echo_count weapon.state = @s weapon.gun_echo_clip_ammo
execute if score #echo_count weapon.state matches ..0 run scoreboard players set #echo_count weapon.state 1
function weapon:range/skill/skill/echo/count0 with storage weapon:echo count
scoreboard players set @s inventory 1
function inventory:item_store
