# 双倍子弹（double_bullet）：最大备弹 ×2。宏参数 gun = 枪名，算出 #max_ammo perk = 执行者这把枪的最大备弹
# 补满弹药在各枪的 allammo（ammo ×2），“弹药已满”的判断（商店买子弹、幸运箱补弹、商店提示）调用本函数
# 已有的子弹不会因为买了本增益而变多，下次补满时才按双倍补
# 蓝图的上限在全局模板 ammo weapon.gun_blueprint 里，多人时每个持蓝图的玩家每 tick 都会覆盖它，所以算上限前先抄自己手上那把（同 blueprint/allammo）
execute if score @s weapon.bp_id = @s weapon.bp_id run function weapon:range/gun/gun/blueprint/stat/apply
$scoreboard players operation #max_ammo perk = ammo weapon.gun_$(gun)
execute if score @s perk.double_bullet matches 1 run scoreboard players operation #max_ammo perk *= 2 number
