# 档 C（r41+）：14 个增益：被拿走的格子就是被点击的增益。点中一个就 return——槽满时 buy_perk 会把菜单换成替换页（第 11/13/15 格放玩家的增益），不停下来后面的格子会被误判成也被点了
execute unless items entity @s container.1 *[custom_data~{tag:["fast_revive","minecart"]}] run return run function map:shop/interact/buy_perk {perk:fast_revive}
execute unless items entity @s container.2 *[custom_data~{tag:["quick_fire","minecart"]}] run return run function map:shop/interact/buy_perk {perk:quick_fire}
execute unless items entity @s container.3 *[custom_data~{tag:["speed","minecart"]}] run return run function map:shop/interact/buy_perk {perk:speed}
execute unless items entity @s container.5 *[custom_data~{tag:["extra_health","minecart"]}] run return run function map:shop/interact/buy_perk {perk:extra_health}
execute unless items entity @s container.6 *[custom_data~{tag:["gold_thrower","minecart"]}] run return run function map:shop/interact/buy_perk {perk:gold_thrower}
execute unless items entity @s container.7 *[custom_data~{tag:["double_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:double_bullet}
execute unless items entity @s container.11 *[custom_data~{tag:["fast_regeneration","minecart"]}] run return run function map:shop/interact/buy_perk {perk:fast_regeneration}
execute unless items entity @s container.12 *[custom_data~{tag:["gravity_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:gravity_bullet}
execute unless items entity @s container.13 *[custom_data~{tag:["frozen_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:frozen_bullet}
execute unless items entity @s container.15 *[custom_data~{tag:["lightning_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:lightning_bullet}
execute unless items entity @s container.20 *[custom_data~{tag:["selfexplosion","minecart"]}] run return run function map:shop/interact/buy_perk {perk:selfexplosion}
execute unless items entity @s container.21 *[custom_data~{tag:["no_knockback","minecart"]}] run return run function map:shop/interact/buy_perk {perk:no_knockback}
execute unless items entity @s container.23 *[custom_data~{tag:["absorptionconversion","minecart"]}] run return run function map:shop/interact/buy_perk {perk:absorptionconversion}
execute unless items entity @s container.24 *[custom_data~{tag:["magnetic_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:magnetic_bullet}
