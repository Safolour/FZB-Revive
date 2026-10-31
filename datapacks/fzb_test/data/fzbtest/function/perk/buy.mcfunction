# 以假人身份执行：按商店真实入口购买/升级增益（$(price) 为本次价格）
$scoreboard players set price shop.price $(price)
$function map:shop/interact/buy_perk1 {item:$(perk)}
tag @s remove target
tag @s remove target0
tag @s remove bought
