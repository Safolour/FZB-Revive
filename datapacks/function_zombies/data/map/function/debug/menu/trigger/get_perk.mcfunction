
# 调试菜单：免费拿增益（宏参数 perk）。走售货机的购买流程（价格当 0），放进空的增益槽；已经有、或者增益槽满了就拿不到
$execute if items entity @s container.* *[custom_data~{tag:["$(perk)"]}] run return run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute unless items entity @s container.* *[custom_data~{tag:["perk_slot"]}] run return run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
scoreboard players set price shop.price 0
$function map:shop/interact/buy_perk1 {item:$(perk)}
tag @s remove target
tag @s remove target0
tag @s remove bought
