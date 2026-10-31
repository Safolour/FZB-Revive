# 引力子弹（gravity_bullet）：枪命中后由 perk/hit/post 调用（执行者 = 被打的敌人）
# vortex_chance% 概率在敌人位置生成 1 秒的小漩涡（perk/gravity_bullet/vortex，漩涡法杖特效缩小版）
# 其余部分：子弹击退反向（weapon:range/gun/damage/punch），漩涡法杖冷却 30 → 15 秒（gyrokineticwand/hit）
execute store result score #roll perk run random value 1..100
execute if score #roll perk > vortex_chance perk.gravity_bullet run return fail
execute at @s run summon marker ~ ~ ~ {Tags:["perk_vortex","perk_new"]}
scoreboard players operation @e[type=marker,tag=perk_new] perk.vortex_time = vortex_time perk.gravity_bullet
tag @e[type=marker,tag=perk_new] remove perk_new
