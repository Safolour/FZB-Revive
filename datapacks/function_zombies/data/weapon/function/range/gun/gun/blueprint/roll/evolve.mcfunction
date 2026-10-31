# 蓝图强化满 → 函数（同一个格子）
function weapon:range/gun/_get_item/replace/gun_state {gun:function}
function weapon:range/gun/_get_item/replace/function0 with storage weapon root
function weapon:range/gun/gun/function/allammo
function weapon:range/gun/slot/count {gun:"function"}
tellraw @s [{translate:"zb.shop.tellraw.blueprint"},{text:" ➜ "},{translate:"zb.shop.tellraw.function"},{translate:"zb.item.gun.tellraw.function.0"}]
playsound ui.toast.challenge_complete record @s ~ ~ ~ 1 1 0
