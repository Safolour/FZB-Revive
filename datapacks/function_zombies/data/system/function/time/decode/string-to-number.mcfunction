
data modify storage base64 root.decode.string.0 set from storage base64 root.decode.text1[0]
function system:time/decode/string-to-number0 with storage base64 root.decode.string
data remove storage base64 root.decode.text1[0]

#检测字符串是否翻译完
execute store result score ifempty base64 run execute if data storage base64 root.decode.text1[0]
execute if score ifempty base64 matches 1 run function system:time/decode/string-to-number
