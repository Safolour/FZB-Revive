function zombie:skill/nether/guardian/floor/0/reset

kill @e[type=marker,tag=skill.guardian.floor.platform.marker]
function zombie:skill/nether/guardian/floor/0/reset
function zombie:skill/nether/guardian/crimson/0/reset
function zombie:skill/nether/guardian/crimson/0/plan/end
function zombie:skill/nether/guardian/crimson/1/reset
function zombie:skill/nether/guardian/crimson/2/reset
function zombie:skill/nether/guardian/crimson/4/reset
function zombie:skill/nether/guardian/crimson/5/reset

function zombie:skill/nether/guardian/warped/0/reset
function zombie:skill/nether/guardian/warped/0/plan/end
function zombie:skill/nether/guardian/warped/1/reset
function zombie:skill/nether/guardian/warped/2/reset

function zombie:skill/nether/guardian/warped/1/guardian/blaze/clear
function zombie:skill/nether/guardian/warped/1/guardian/suspense/clear
function zombie:skill/nether/guardian/warped/1/guardian/meltdown/clear
function zombie:skill/nether/guardian/warped/1/guardian/twilight/clear

function zombie:skill/nether/guardian/crimson/3/reset
function zombie:skill/nether/guardian/floor/eye/clear

function zombie:skill/nether/guardian/crimson/0/skill/interplay/clear
function zombie:skill/nether/guardian/warped/0/skill/interplay/clear

schedule clear zombie:skill/nether/guardian/floor/lava/down/0
# 转阶段排的这三个原来没人清：游戏在转阶段时结束，重置完它们照样执行，诡异守卫者会刷进下一局（还设 stat=3 开打）
schedule clear zombie:skill/nether/guardian/crimson/1/guardian/0
schedule clear zombie:skill/nether/guardian/warped/0/init
schedule clear zombie:skill/nether/guardian/crimson/6/plan/init

scoreboard players reset stat zombie.nether.guardian
function map:music/lava_sea/stop

scoreboard players reset @a[scores={system.room=4..}] zombie.nether.lava.damage_resettimer
