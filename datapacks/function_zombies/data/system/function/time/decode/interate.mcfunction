
data modify storage base64 root.decode.text1 append string storage base64 root.decode.text 0 1
data modify storage base64 root.decode.text set string storage base64 root.decode.text 1

#检测字符串是否拆解完
execute store result score ifempty base64 run data modify storage base64 root.decode.text2 set string storage base64 root.decode.text 0
execute if score ifempty base64 matches 1 run function system:time/decode/interate