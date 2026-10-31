# 性能基准：在 $(x) $(y) $(z) 生成一只不移动的高血量僵尸（不清除已有的）
$summon zombie $(x) $(y) $(z) {NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Tags:["mob","hitable","fzbtest_target","fzbtest_new"]}
scoreboard players set @e[tag=fzbtest_new] zombie.health 100000000
scoreboard players set @e[tag=fzbtest_new] zombie.max_health 100000000
scoreboard players set @e[tag=fzbtest_new] zombie.speed 0
scoreboard players set @e[tag=fzbtest_new] zombie.armor 0
scoreboard players set @e[tag=fzbtest_new] zombie.knockresistance 100
tag @e[tag=fzbtest_new] remove fzbtest_new
