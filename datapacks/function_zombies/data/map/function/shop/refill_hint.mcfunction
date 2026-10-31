# 填弹提示（右键以填弹）：动作栏优先级 5，比换弹 2 / 充能 3 / 窗口提示 4 都低，它们抢到后这条不显示
scoreboard players set @s[scores={system.actionbar=5..}] system.actionbar 5
execute unless entity @s[scores={system.actionbar=5}] run return fail
scoreboard players set @s[scores={stat.player=1}] shop.actionbar 1
title @s[scores={stat.player=1}] actionbar [{translate:zb.shop.actionbar.2}]
