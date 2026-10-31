# 按当前页分派点击（#idx monhan = 选项序号）。页号：
#   1 主菜单 | 10/11 弹药满载 | 20-24 玻璃框 | 30-33 全体复活 | 40-45 温度 | 50-55 幸运箱定向 | 60-64 错过的增益 | 70-73 建议 | 90 没钱
execute if score @s monhan.page matches 1 run return run function map:area/lab/monhan/page/main/click
execute if score @s monhan.page matches 10 run return run function map:area/lab/monhan/page/ammo/click
execute if score @s monhan.page matches 20 run return run function map:area/lab/monhan/page/showcase/click_give
execute if score @s monhan.page matches 22 run return run function map:area/lab/monhan/page/showcase/click_clear
execute if score @s monhan.page matches 30 run return run function map:area/lab/monhan/page/revive/click_intro
execute if score @s monhan.page matches 31 run return run function map:area/lab/monhan/page/revive/click_price
execute if score @s monhan.page matches 40 run return run function map:area/lab/monhan/page/temperature/click_menu
execute if score @s monhan.page matches 41 run return run function map:area/lab/monhan/page/temperature/click_heat
execute if score @s monhan.page matches 42 run return run function map:area/lab/monhan/page/temperature/click_confirm
execute if score @s monhan.page matches 43 run return run function map:area/lab/monhan/page/temperature/click_heated
execute if score @s monhan.page matches 44 run return run function map:area/lab/monhan/page/temperature/click_cool
execute if score @s monhan.page matches 45 run return run function map:area/lab/monhan/page/temperature/click_heated
execute if score @s monhan.page matches 50 run return run function map:area/lab/monhan/page/lucky/click_intro
execute if score @s monhan.page matches 51 run return run function map:area/lab/monhan/page/lucky/click_list_buy
execute if score @s monhan.page matches 52 run return run function map:area/lab/monhan/page/lucky/click_set
execute if score @s monhan.page matches 53 run return run function map:area/lab/monhan/page/lucky/click_manage
execute if score @s monhan.page matches 54 run return run function map:area/lab/monhan/page/lucky/click_list_change
execute if score @s monhan.page matches 60 run return run function map:area/lab/monhan/page/perk/click_intro
execute if score @s monhan.page matches 61 run return run function map:area/lab/monhan/page/perk/click_list
execute if score @s monhan.page matches 63 run return run function map:area/lab/monhan/page/perk/click_owned
execute if score @s monhan.page matches 70 run return run function map:area/lab/monhan/page/tips/click_intro
execute if score @s monhan.page matches 71 run return run function map:area/lab/monhan/page/tips/click_tip
execute if score @s monhan.page matches 72 run return run function map:area/lab/monhan/page/tips/click_enemies
execute if score @s monhan.page matches 73 run return run function map:area/lab/monhan/page/tips/enemies
# 其余页面（11、21、23、24、32、33、55、62、64、90）只有“好的/我还需要别的”，都回主菜单
function map:area/lab/monhan/page/main/show
