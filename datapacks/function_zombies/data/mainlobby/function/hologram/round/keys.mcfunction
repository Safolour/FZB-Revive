# 把旧版排行榜参数（type 名称、map 编号）换算成新版 zb.mainlobby.leaderboard.* 的下标
# 输入 $(type) $(map)，输出 storage stat root.leaderboard_key.{type,map,mode}
data modify storage stat root.leaderboard_key set value {}
$data modify storage stat root.leaderboard_key.type set from storage stat root.leaderboard_index.type.$(type)
$data modify storage stat root.leaderboard_key.map set from storage stat root.leaderboard_index.map."$(map)"
$data modify storage stat root.leaderboard_key.mode set from storage stat root.leaderboard_index.mode."$(map)"
