# 以假人身份执行：在视线正前方 $(dist) 格处生成无 AI 的高血量靶子，射线高度落在身体而非头部
kill @e[tag=fzbtest_target]
$execute anchored eyes positioned ^ ^ ^$(dist) run summon zombie ~ ~-1.1 ~ {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["mob","hitable","fzbtest_target","fzbtest_new"]}
scoreboard players set @e[tag=fzbtest_new] zombie.health 100000
scoreboard players set @e[tag=fzbtest_new] zombie.max_health 100000
scoreboard players set @e[tag=fzbtest_new] zombie.speed 0
scoreboard players set @e[tag=fzbtest_new] zombie.armor 0
scoreboard players set @e[tag=fzbtest_new] zombie.critical_extra 100
scoreboard players set @e[tag=fzbtest_new] zombie.knockresistance 100
tag @e[tag=fzbtest_new] remove fzbtest_new
