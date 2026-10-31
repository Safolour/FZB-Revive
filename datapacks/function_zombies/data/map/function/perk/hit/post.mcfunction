# 枪命中、扣血之后调用（执行者 = 被打的敌人，射手 = @p[scores={weapon.use=1..}]）
# 火焰子弹：点燃
execute if entity @p[scores={weapon.use=1..,perk.flame_bullet=1}] run function map:perk/flame_bullet
# 闪电子弹：概率在原地落雷（下一 tick 结算，伤害走电击棒技能的计算）
execute if entity @p[scores={weapon.use=1..,perk.lightning_bullet=1}] run function map:perk/lightning_bullet
# 引力子弹：概率生成小漩涡
execute if entity @p[scores={weapon.use=1..,perk.gravity_bullet=1}] run function map:perk/gravity_bullet
