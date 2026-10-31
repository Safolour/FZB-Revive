# 以假人身份执行：在枪械商店购买/补充 $(gun)，价格 $(price)
$scoreboard players set price shop.price $(price)
$function map:shop/interact/buy_gun {item:$(gun)}
tag @s remove bought
