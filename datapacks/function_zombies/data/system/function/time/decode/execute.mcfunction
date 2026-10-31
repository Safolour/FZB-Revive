
#拆解base64
data modify storage base64 root.decode.text1 set value []
function system:time/decode/interate
#转二进制
data modify storage base64 root.decode.text2 set value []
function system:time/decode/string-to-number
#合并数字
data modify storage base64 root.decode.text1 set value []
data modify storage base64 root.decode.merge_text.0 set value ''
data modify storage base64 root.decode.merge_text.1 set value ''
function system:time/decode/merge
#六个一组拆解数字
data modify storage base64 root.decode.text set from storage base64 root.decode.merge_text.0
function system:time/decode/re_interate
#ascii转明文
data modify storage base64 root.decode.text2 set value []
function system:time/decode/translate

#二次合并
data modify storage base64 root.decode.text1 set value []
data modify storage base64 root.decode.merge_text.0 set value ''
data modify storage base64 root.decode.merge_text.1 set value ''
function system:time/decode/merge
#获取时间戳
data modify storage base64 root.decode.text set from storage base64 root.decode.merge_text.0
data modify storage base64 root.decode.text1 set string storage base64 root.decode.merge_text.0 13
scoreboard players set string_length base64 12
function system:time/decode/get_timestamp
#获取皮肤
scoreboard players set @s stat.slim 0
data modify storage base64 root.decode.text set from storage base64 root.decode.merge_text.0
data modify storage base64 root.decode.text1 set from storage base64 root.decode.merge_text.0
scoreboard players set string_length base64 30
function system:time/decode/skin_model

#data modify storage base64 root.decode.text set string storage base64 root.decode.timestamp 17 -1
data modify storage base64 root.decode.text set string storage base64 root.decode.timestamp 0
data modify storage base64 root.decode.text1 set string storage base64 root.decode.text -12 -3
data modify storage base64 root.decode.text2 set string storage base64 root.decode.text 0 -12
function system:time/decode/number with storage base64 root.decode
#tellraw @s [{"storage":"base64","nbt":"root.decode.text1"},{text:"\n"}]
#return fail
