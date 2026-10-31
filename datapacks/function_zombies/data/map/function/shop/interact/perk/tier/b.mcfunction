# 档 B（r21-40）：3×3 + 第 15 格轮换位
function map:shop/interact/perk/menu1_slot {slot:2,perk:fast_revive}
function map:shop/interact/perk/menu1_slot {slot:3,perk:quick_fire}
function map:shop/interact/perk/menu1_slot {slot:4,perk:speed}
function map:shop/interact/perk/menu1_slot {slot:11,perk:fast_regeneration}
function map:shop/interact/perk/menu1_slot {slot:12,perk:gravity_bullet}
function map:shop/interact/perk/menu1_slot {slot:13,perk:frozen_bullet}
function map:shop/interact/perk/menu1_slot {slot:20,perk:extra_health}
function map:shop/interact/perk/menu1_slot {slot:21,perk:gold_thrower}
function map:shop/interact/perk/menu1_slot {slot:22,perk:double_bullet}
# 第 15 格轮换：r21-30 火焰子弹，r31-35 灰烬子弹，r36-40 中和子弹
execute if score @s shop.menu_tier matches 2 run function map:shop/interact/perk/menu1_slot {slot:15,perk:flame_bullet}
execute if score @s shop.menu_tier matches 3 run function map:shop/interact/perk/menu1_slot {slot:15,perk:ashes_bullet}
execute if score @s shop.menu_tier matches 4 run function map:shop/interact/perk/menu1_slot {slot:15,perk:neutralization_bullet}
