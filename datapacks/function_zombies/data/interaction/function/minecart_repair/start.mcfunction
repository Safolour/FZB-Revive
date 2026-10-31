scoreboard players set #minecart_repair interaction.range 0
function interaction:minecart_repair/trace
scoreboard players reset #minecart_repair interaction.range
# 商店重建会清除 chosen 标签；恢复当前玩家，供后续右键处理使用。
tag @s add chosen
