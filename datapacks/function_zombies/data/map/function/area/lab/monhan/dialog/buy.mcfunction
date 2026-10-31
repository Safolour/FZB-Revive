# 全服播报：<玩家>在 Monhan 处购买了<$(k)>！（zb.dialog.monhan.text.buy.0，$(c) = 物品组件）
$tellraw @a[scores={system.room=4..}] {translate:"zb.dialog.monhan.text.buy.0",with:[{selector:"@s"},{translate:"zb.zombie.name.monhan",color:"#FF674E"},$(c)]}
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
