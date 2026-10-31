
scoreboard players add string_length base64 1
data modify storage base64 root.decode.string.0 set string storage base64 root.decode.text1 0 1
execute store result score ifempty base64 run function system:time/decode/get_timestamp0 with storage base64 root.decode.string
data modify storage base64 root.decode.text1 set string storage base64 root.decode.text1 1
#检测字符串是否拆解完
execute if score ifempty base64 matches 0 run return run function system:time/decode/get_timestamp

execute store result storage base64 root.decode.string.0 int 1 run scoreboard players get string_length base64
return run function system:time/decode/get_timestamp1 with storage base64 root.decode.string