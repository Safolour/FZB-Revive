$forceload add $(x) 18000 $(x1) 18116
$execute unless loaded $(x) 144 18000 run return 0
$execute unless loaded $(x1) 144 18116 run return 0
$execute if entity @s[tag=paradox.build_room] run place template weapon:paradox/dream_room $(x) 144 18000
tag @s remove paradox.build_room
# Only the central four chunks need a ticket while enemies await their owner.
$forceload remove $(x) 18000 $(x1) 18116
$execute positioned $(cx) 145 18058 positioned ~-8 ~ ~-8 run forceload add ~ ~ ~15 ~15
scoreboard players operation #control_owner weapon.pd_owner = @s uuid
scoreboard players set #control_found weapon.pd_owner 0
execute as @e[type=marker,tag=paradox.room_control] if score @s weapon.pd_owner = #control_owner weapon.pd_owner run scoreboard players set #control_found weapon.pd_owner 1
$execute if score #control_found weapon.pd_owner matches 0 run summon marker $(cx) 145 18058 {Tags:["gun","paradox.room_control","paradox.new_control"],data:{x:$(x),x1:$(x1),cx:$(cx),owner:$(owner)}}
scoreboard players operation @e[type=marker,tag=paradox.new_control,limit=1] weapon.pd_owner = @s uuid
tag @e[type=marker,tag=paradox.new_control] remove paradox.new_control
return 1
