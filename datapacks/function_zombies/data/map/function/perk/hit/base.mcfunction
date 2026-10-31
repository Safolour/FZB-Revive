# 枪命中、算护甲之前调用（执行者 = 被打的敌人，射手 = @p[scores={weapon.use=1..}]）：调整 damage0 weapon.state（基础伤害）
# 灰烬子弹：射手每少 1 点生命，基础伤害 +ratio（内部单位，10 = 1 点伤害）
execute if entity @p[scores={weapon.use=1..,perk.ashes_bullet=1}] run function map:perk/ashes_bullet/bonus
