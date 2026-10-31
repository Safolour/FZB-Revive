
#获取base64代码
data remove storage base64 root.decode
loot replace block 1 -60 1 container.0 loot system:playerhead
data modify storage base64 root.decode.text set from block 1 -60 1 Items.[{Slot:0b}].components."minecraft:profile".properties[].value
item replace block 1 -60 1 container.0 with air
execute unless data storage base64 root.decode.text run scoreboard players set @s stat.slim 0
execute unless data storage base64 root.decode.text run return run data remove storage base64 root.decode
#tellraw @a [{nbt:root.decode,storage:base64}]
#解密
execute if data storage base64 root run function system:time/decode/execute
#运算
execute if data storage base64 root run function system:time/operation/execute

execute store result storage time root.time.year int 1 run scoreboard players get year time
data modify storage time root.time.year1 set string storage time root.time.year 2
execute store result storage time root.time.month int 1 run scoreboard players get month time
execute store result storage time root.time.day int 1 run scoreboard players get day time
function system:time/operation/commandblock_time

scoreboard players operation month system.stat = month time
data remove storage base64 root.decode
#scoreboard players set month time 3

#scoreboard players set month system.stat 12

#execute if score month system.stat matches 3..5 run say spring
#execute if score month system.stat matches 6..8 run say summer
#execute if score month system.stat matches 9..11 run say tp autumn lobby
#execute if score month system.stat matches 12 run say tp winter lobby
#execute if score month system.stat matches 1..2 run say tp winter lobby
