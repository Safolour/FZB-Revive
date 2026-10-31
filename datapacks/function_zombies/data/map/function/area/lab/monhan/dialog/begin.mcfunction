# 开一页新对话：换随机 key（选项值 = key + 序号），用 n1（17 个换行）把聊天栏顶上去，照录像
execute store result score @s monhan.key run random value 100000..2000000000
tellraw @s {translate:"zb.dialog.monhan.n1"}
