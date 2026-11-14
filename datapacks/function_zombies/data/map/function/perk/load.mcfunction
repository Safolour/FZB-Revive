
scoreboard objectives add perk.speed dummy
scoreboard objectives add perk.fast_revive dummy
scoreboard objectives add perk.quick_fire dummy
 scoreboard players set default perk.quick_fire 75
scoreboard objectives add perk.frozen_bullet dummy
 scoreboard players set default perk.frozen_bullet 40
 scoreboard players set slow perk.frozen_bullet 75
 scoreboard objectives add perk.frozen_bullet_time dummy
scoreboard objectives add perk.extra_health dummy
 scoreboard players set default perk.extra_health 20
 scoreboard objectives add perk.extra_health_lv dummy

# 售货机新增增益（数值除注明“录像”的以外都是按用户描述定的，可直接改这里）
# perk：临时计算；perk.owner：闪电/漩涡标记和燃烧中的敌人记录是谁打的（玩家 uuid）；perk.last_shot/last_hit：上一 tick 的开枪/命中计数
scoreboard objectives add perk dummy
scoreboard objectives add perk.owner dummy
scoreboard objectives add perk.last_shot dummy
scoreboard objectives add perk.last_hit dummy
# 各可切换增益共用的玩家独立冷却（20 tick = 1 秒）
scoreboard objectives add perk.switch_cd dummy
# 手持增益物品右键（灰烬子弹、伤害吸收转化的切换）：这两个物品的底物品是胡萝卜钓竿
# 金钱丢失：伤害和命中金钱 -10%×玩家数（最多 -90%）；枪击杀掉落三倍（金质武器四倍）金钱的合计概率固定为 1%，掉出来的在地上只留 10 秒
scoreboard objectives add perk.gold_thrower dummy
 scoreboard players set cut_per_player perk.gold_thrower 10
 scoreboard players set cut_max perk.gold_thrower 90
 scoreboard players set #cut perk.gold_thrower 10
# 双倍子弹：枪的最大备弹 ×2
scoreboard objectives add perk.double_bullet dummy
scoreboard objectives add perk.double_bullet_prev dummy
# 快速恢复：回血间隔和治愈技能冷却写在 player_stat:health/heal/load、weapon:range/skill/skill/heal/load
scoreboard objectives add perk.fast_regeneration dummy
# 引力子弹：子弹击退反向；命中时 5% 概率生成 1 秒的小漩涡（半径 3 格）
scoreboard objectives add perk.gravity_bullet dummy
 scoreboard players set vortex_chance perk.gravity_bullet 5
 scoreboard players set vortex_time perk.gravity_bullet 20
 scoreboard objectives add perk.vortex_time dummy
# 火焰子弹：点燃 3 秒，每秒 1 点火焰伤害，火焰类敌人（firezb）×2
scoreboard objectives add perk.flame_bullet dummy
 scoreboard players set time perk.flame_bullet 60
 scoreboard players set interval perk.flame_bullet 20
 scoreboard players set damage perk.flame_bullet 10
 scoreboard objectives add perk.flame_time dummy
# 灰烬子弹：每次开枪扣 2 点生命（1 颗心，录像 2026_10_20 按 update_health/实体血量逐发对出来的，扣完会低于保留线就不扣）；每少 1 点生命，枪的基础伤害 +0.5（内部单位 5，2026-11-14 用户要求减半）；保留档位 = 物品数量（1=不保留，80/60/40/20=保留该百分比）
scoreboard objectives add perk.ashes_bullet dummy
 scoreboard players set cost perk.ashes_bullet 20
 scoreboard players set ratio perk.ashes_bullet 5
# 中和子弹：火焰发射器系列每次命中额外造成首次触发时血量的 2%
scoreboard objectives add perk.neutralization_bullet dummy
 scoreboard players set step perk.neutralization_bullet 1
 scoreboard players set max perk.neutralization_bullet 10
 scoreboard objectives add perk.neutralization_stack dummy
 scoreboard objectives add perk.neutralization_base dummy
# 闪电子弹：命中 10% 概率对落点 5 格内的敌人落雷（群体，伤害同电击棒技能，+50 金钱）；电击枪连锁 3→7；电击棒冷却写在 lightningrod/load
scoreboard objectives add perk.lightning_bullet dummy
 scoreboard players set chance perk.lightning_bullet 10
 scoreboard objectives add perk.target dummy
 scoreboard players set gold perk.lightning_bullet 50
# 原地爆炸：倒地时 5 格内敌人受到 500 真实伤害（无视护甲）并被击退，每个敌人 +10 金钱
scoreboard objectives add perk.selfexplosion dummy
 scoreboard players set damage perk.selfexplosion 500
 scoreboard players set punch perk.selfexplosion 300
 scoreboard players set gold perk.selfexplosion 10
# 击退转换：自身免疫击退，武器击退 ×1.5
scoreboard objectives add perk.no_knockback dummy
 scoreboard players set punch perk.no_knockback 150
# 伤害吸收转化：加成 = 最大加成 ×（当前金血 + 发射器储存值）/ 120
scoreboard objectives add perk.absorptionconversion dummy
 scoreboard players set damage_max perk.absorptionconversion 150
 scoreboard players set resist_max perk.absorptionconversion 75
 scoreboard players set absorption_max perk.absorptionconversion 120
 scoreboard objectives add perk.absorption_mode dummy
 scoreboard objectives add perk.absorption_damage dummy
 scoreboard objectives add perk.absorption_resist dummy
# 磁吸子弹：子弹飞到敌人 3 格内时转向它
scoreboard objectives add perk.magnetic_bullet dummy
