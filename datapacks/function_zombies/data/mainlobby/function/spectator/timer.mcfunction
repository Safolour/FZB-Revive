# 申请者离开了主大厅（自己进了等待大厅、掉线重进等）就作废，不提示
execute unless entity @s[scores={system.room=1..2}] run return run function mainlobby:spectator/clear
# 游戏结束了也作废
execute unless entity @a[scores={system.room=4..,stat.player=1..3}] run return run function mainlobby:spectator/clear
scoreboard players remove @s spectator.timer 1
execute if score @s spectator.timer matches 0 run function mainlobby:spectator/expire
