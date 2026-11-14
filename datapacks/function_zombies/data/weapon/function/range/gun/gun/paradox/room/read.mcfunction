execute unless score @s weapon.pd_room matches 1.. run function weapon:range/gun/gun/paradox/room/allocate
execute unless score @s weapon.pd_layout matches 2 run tag @s add paradox.build_room
scoreboard players set @s weapon.pd_layout 2
scoreboard players operation #room weapon.pd_room = @s weapon.pd_room
scoreboard players operation #room weapon.pd_room *= #2048 weapon.pd_room
scoreboard players operation #room weapon.pd_room += #18000 weapon.pd_room
execute store result storage weapon paradox.room.x int 1 run scoreboard players get #room weapon.pd_room
scoreboard players add #room weapon.pd_room 116
execute store result storage weapon paradox.room.x1 int 1 run scoreboard players get #room weapon.pd_room
scoreboard players remove #room weapon.pd_room 58
execute store result storage weapon paradox.room.cx double 1 run scoreboard players get #room weapon.pd_room
execute store result storage weapon paradox.room.owner int 1 run scoreboard players get @s uuid
return run function weapon:range/gun/gun/paradox/room/load with storage weapon paradox.room
