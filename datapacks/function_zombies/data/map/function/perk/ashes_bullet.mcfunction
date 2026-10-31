# 灰烬子弹（ashes_bullet）：持有者每 tick 由 map:perk/tick 调用
# 保留档位 = 背包里灰烬子弹物品的数量：1 = 不保留（按住 SHIFT 时不扣血），80/60/40/20 = 生命值低于该百分比时不扣血
# 伤害加成在 perk/hit/base → perk/ashes_bullet/bonus
execute if score #shot perk matches 1.. run function map:perk/ashes_bullet/cost
execute if score @s interaction.right_click matches 1.. if items entity @s weapon.mainhand *[custom_data~{tag:["ashes_bullet"]}] run function map:perk/ashes_bullet/switch
