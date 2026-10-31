# 只清平台标记和守卫者地板相关 schedule，不写方块：游戏结束由 zombie:reset 调用时，地板由 map:reset 的 floor/reset 负责
#platform
function zombie:skill/nether/guardian/floor/0/platform/clear

schedule clear zombie:skill/nether/guardian/floor/0/init/1
schedule clear zombie:skill/nether/guardian/floor/0/init/2
schedule clear zombie:skill/nether/guardian/floor/0/init/3
schedule clear zombie:skill/nether/guardian/floor/0/init/4
schedule clear zombie:skill/nether/guardian/floor/0/warning/1
schedule clear zombie:skill/nether/guardian/floor/0/warning/2
schedule clear zombie:skill/nether/guardian/floor/0/platform/particle
