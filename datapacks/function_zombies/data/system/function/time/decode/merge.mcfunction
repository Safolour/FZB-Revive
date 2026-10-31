
data modify storage base64 root.decode.merge_text.1 set from storage base64 root.decode.text2[0]
function system:time/decode/merge0 with storage base64 root.decode.merge_text
data remove storage base64 root.decode.text2[0]

#检测字符串是否合并完
execute store result score ifempty base64 run execute if data storage base64 root.decode.text2[0]
execute if score ifempty base64 matches 1 run function system:time/decode/merge
