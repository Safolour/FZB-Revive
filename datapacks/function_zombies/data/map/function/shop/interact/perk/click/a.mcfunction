# 档 A（r1-20）：6 个增益，第 10-12、14-16 格：被拿走的格子就是被点击的增益。点中一个就 return——槽满时 buy_perk 会把菜单换成替换页（第 11/13/15 格放玩家的增益），不停下来后面的格子会被误判成也被点了
execute unless items entity @s container.10 *[custom_data~{tag:["fast_revive","minecart"]}] run return run function map:shop/interact/buy_perk {perk:fast_revive}
execute unless items entity @s container.11 *[custom_data~{tag:["quick_fire","minecart"]}] run return run function map:shop/interact/buy_perk {perk:quick_fire}
execute unless items entity @s container.12 *[custom_data~{tag:["speed","minecart"]}] run return run function map:shop/interact/buy_perk {perk:speed}
execute unless items entity @s container.14 *[custom_data~{tag:["extra_health","minecart"]}] run return run function map:shop/interact/buy_perk {perk:extra_health}
execute unless items entity @s container.15 *[custom_data~{tag:["gold_thrower","minecart"]}] run return run function map:shop/interact/buy_perk {perk:gold_thrower}
execute unless items entity @s container.16 *[custom_data~{tag:["double_bullet","minecart"]}] run return run function map:shop/interact/buy_perk {perk:double_bullet}
