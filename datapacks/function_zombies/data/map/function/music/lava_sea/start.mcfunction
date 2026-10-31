# r30 守卫者 boss 音乐「穿越远古熔岩之海」：照录像（2026_10_06_11_48_36）在 guardian/floor/0/init/2 开始
# 两个全图播放点、record、音量 100；每处收到两次，照录像保留
execute unless score round game.state matches 30 run return fail
function map:music/lava_sea/stop
function map:music/lava_sea/play {sound:"custom.traversing_the_primordial_lava_sea_intro"}
# intro 25.7 秒，录像里 25.64 秒后切 loop
schedule function map:music/lava_sea/loop 513t
