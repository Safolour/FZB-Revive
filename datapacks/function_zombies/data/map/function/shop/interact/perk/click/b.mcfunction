# 档 B（r21-40）：3×3 + 第 15 格轮换位：被拿走的格子就是被点击的增益。点中一个就 return——槽满时 buy_perk 会把菜单换成替换页（第 11/13/15 格放玩家的增益），不停下来后面的格子会被误判成也被点了
execute unless items entity @s container.2 *[custom_data~{tag:["fast_revive","minecart"]}] run return run function map:shop/interact/buy_perk {perk:fast_revive}
execute unless items entity @s container.3 *[custom_data~{tag:["quick_fire","minecart"]}] run return run function map:shop/interact/buy_perk {perk:quick_fire}
execute unless items entity @s container.4 *[custom_data~{tag:["speed","minecart"]}] run return run function map:shop/interact/buy_perk {perk:speed}
execute unless items entity @s container.11 *[custom_data~{tag:["fast_regeneration","minecart"]}] run return run function map:shop/interact/buy_perk {perk:fast_regeneration}
execute unless items entity @s container.12 *[custom_data~{tag:["gravity_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:gravity_bullet}
execute unless items entity @s container.13 *[custom_data~{tag:["frozen_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:frozen_bullet}
execute unless items entity @s container.20 *[custom_data~{tag:["extra_health","minecart"]}] run return run function map:shop/interact/buy_perk {perk:extra_health}
execute unless items entity @s container.21 *[custom_data~{tag:["gold_thrower","minecart"]}] run return run function map:shop/interact/buy_perk {perk:gold_thrower}
execute unless items entity @s container.22 *[custom_data~{tag:["double_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:double_bullet}
# 第 15 格轮换位
execute if score @s shop.menu_tier matches 2 unless items entity @s container.15 *[custom_data~{tag:["flame_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:flame_bullet}
execute if score @s shop.menu_tier matches 3 unless items entity @s container.15 *[custom_data~{tag:["ashes_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:ashes_bullet}
execute if score @s shop.menu_tier matches 4 unless items entity @s container.15 *[custom_data~{tag:["neutralization_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:neutralization_bullet}
