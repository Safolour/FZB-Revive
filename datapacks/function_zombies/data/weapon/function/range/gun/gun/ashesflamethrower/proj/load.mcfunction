# 灰烬火焰发射器弹丸（普通 / 终极共用）
# 弹丸 = marker（标签 gun ashes_proj），每 tick 由 weapon:range/gun/tick1 → proj/tick1 推进
#   weapon.range       还能走几个 0.5 格
#   weapon.ashes_step  每 tick 走几个 0.5 格（普通 1，终极 2）
#   weapon.ashes_pierce 还能穿过几个敌人，打中第 pierce+1 个就消失
#   weapon.ashes_id    弹丸编号；敌人身上的 weapon.ashes_last 记最后打中它的弹丸，同一颗不重复打
#   weapon.ashes_born  生成时的 gametime（生成当 tick 已经走过一次，tick1 跳过）
scoreboard objectives add weapon.ashes_step dummy
scoreboard objectives add weapon.ashes_pierce dummy
scoreboard objectives add weapon.ashes_id dummy
scoreboard objectives add weapon.ashes_last dummy
scoreboard objectives add weapon.ashes_born dummy
# 伤害吸收夹值修饰符的去除时刻（见 absorb/add）
scoreboard objectives add weapon.ashes_clamp dummy
scoreboard objectives add weapon.ashes_reg dummy
scoreboard objectives add weapon.ashes_ult dummy
# 每发：射手扣 cost（0.1 生命）生命，自己和 5 格内队友各加 absorb（0.01 生命）伤害吸收；每人按自己的 max_health 封顶
#   超出上限的金血存入其背包内灰烬枪的 custom_data.ashes_gold，金血损失后逐 tick 回填
#   没有灰烬子弹：1 点生命换 2 点金血（absorb 200）；带着灰烬子弹：金血 ×2 = 4 点（absorb/shoot 里 ×2；灰烬子弹另扣 2 点生命，合计 −3）
#   xlsx 只写了“消耗自身血量给自己和周围的队友伤害吸收”；按用户要求，每位接收者的金血上限取其当前 max_health
scoreboard objectives add weapon.ashes dummy
scoreboard players set cost weapon.ashes 10
scoreboard players set absorb weapon.ashes 200
