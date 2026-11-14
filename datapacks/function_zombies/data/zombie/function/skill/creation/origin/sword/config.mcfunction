# 巨剑伤害及范围是临时平衡值，录像混伤不足以唯一反推。
scoreboard players set #origin.sword.outer zombie.skill.damage 200
scoreboard players set #origin.sword.center zombie.skill.damage 1000
# 录像中唯一干净的巨剑击退增量总强度约 4.01 格/tick；水平约 3.85、向上约 1.14。
# 中心/外圈暂无足够样本证明距离衰减，先共用同一强度，避免把猜测写成曲线。
scoreboard players set #origin.sword.knockback player_motion.api.launch 40000
