# 新版：leaderboard.1 = 显示 %3$s 的 %1$s（%2$s 地图）；模式键由 keys 换算（见 MODE_KEY）
$tellraw @p[tag=chosen] [{translate:zb.mainlobby.leaderboard.1,with:[{translate:zb.mainlobby.leaderboard.type.$(type)},{translate:zb.mainlobby.leaderboard.map.$(map),color:aqua},{translate:zb.mainlobby.leaderboard.mode.$(mode)}]}]
$tellraw @a[tag=!chosen,scores={system.room=1}] [{translate:zb.mainlobby.leaderboard.2,with:[{selector:"@p[tag=chosen]"},{translate:zb.mainlobby.leaderboard.type.$(type)},{translate:zb.mainlobby.leaderboard.map.$(map),color:aqua},{translate:zb.mainlobby.leaderboard.mode.$(mode)}]}]
