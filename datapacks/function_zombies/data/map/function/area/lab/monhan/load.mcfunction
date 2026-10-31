
function map:area/lab/monhan/showcase/load

# Monhan 对话（聊天栏菜单，照录像）：选项点击 = trigger dialogue.trigger set <key+序号>（原版 trigger，会刷“已触发”提示），key 每页随机，旧页面的点击作废
scoreboard objectives add dialogue.trigger trigger
scoreboard objectives add monhan dummy
# 每个玩家：当前页（0 = 没在对话）、本页 key、加热度数
scoreboard objectives add monhan.page dummy
scoreboard objectives add monhan.key dummy
scoreboard objectives add monhan.heat dummy
# 幸运箱保底：计数（购物狂潮降价时抽的不算）、是否已定向
scoreboard objectives add monhan.lucky dummy
scoreboard objectives add monhan.lucky_set dummy

# 价格（录像）
 scoreboard players set ammo.price monhan 2000
 scoreboard players set lucky.price monhan 1000
 # 每 5 抽可以定向 1 次，定向那一抽也算 1 抽：已计 4 抽后才能买
 scoreboard players set lucky.cycle monhan 4
 # 全体复活 = 1500 + 1000 × 局内人数（4 人局 5500，用户给的点）
 scoreboard players set revive.base monhan 1500
 scoreboard players set revive.per monhan 1000
 # 错过的增益统一售价（replay：10,000 金钱）
 scoreboard players set perk.missed.price monhan 10000
