# 闪电子弹（lightning_bullet）：枪命中后由 perk/hit/post 调用（执行者 = 被打的敌人）
# chance% 概率在敌人位置放一个落雷标记，记下这个敌人的 zombie.uuid（perk.target），下一 tick 由 perk/lightning_bullet/strike 结算：
# 落雷打落点 5 格内所有敌人（群体），伤害同电击棒技能，+50 金钱
# 其余部分：电击棒冷却 20 → 5 秒（weapon:range/skill/skill/lightningrod/hit），电击枪连锁 3 → 7（zapper/hit、ultimatezapper/hit）
execute unless score @s zombie.uuid = @s zombie.uuid run return fail
execute store result score #roll perk run random value 1..100
execute if score #roll perk > chance perk.lightning_bullet run return fail
execute at @s run summon marker ~ ~ ~ {Tags:["perk_lightning","perk_new"]}
scoreboard players operation @e[type=marker,tag=perk_new] perk.owner = @p[scores={weapon.use=1..}] uuid
scoreboard players operation @e[type=marker,tag=perk_new] perk.target = @s zombie.uuid
tag @e[type=marker,tag=perk_new] remove perk_new
