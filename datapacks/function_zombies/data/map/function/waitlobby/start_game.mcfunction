
function map:game/start
schedule clear map:waitlobby/1s
schedule clear map:waitlobby/1s_0
# 开局后清掉“倒计时中”标记，否则下次进大厅 start_timer 会直接返回
scoreboard players set timer waitlobby.timer 0

