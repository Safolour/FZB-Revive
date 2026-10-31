
data modify storage base64 root.decode.string.0 set string storage base64 root.decode.text1 0 4
execute store result score ifempty0 base64 run function system:time/decode/skin_model0 with storage base64 root.decode.string
execute store result score ifempty base64 run data get storage base64 root.decode.text1
data modify storage base64 root.decode.text1 set string storage base64 root.decode.text1 1
#检测字符串是否拆解完
execute if score ifempty0 base64 matches 1 run return fail
execute if score ifempty base64 matches 1.. run return run function system:time/decode/skin_model
