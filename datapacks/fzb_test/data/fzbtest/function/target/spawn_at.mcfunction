# 在绝对坐标 $(x) $(y) $(z) 生成悬空、无 AI 的高血量靶子（爆头矩阵测试用）
kill @e[tag=fzbtest_target]
$summon zombie $(x) $(y) $(z) {NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Rotation:[0f,0f],Tags:["mob","hitable","fzbtest_target","fzbtest_new"]}
scoreboard players set @e[tag=fzbtest_new] zombie.health 100000
scoreboard players set @e[tag=fzbtest_new] zombie.max_health 100000
scoreboard players set @e[tag=fzbtest_new] zombie.speed 0
scoreboard players set @e[tag=fzbtest_new] zombie.armor 0
scoreboard players set @e[tag=fzbtest_new] zombie.critical_extra 100
scoreboard players set @e[tag=fzbtest_new] zombie.knockresistance 100
tag @e[tag=fzbtest_new] remove fzbtest_new
