# 宏参数：手持枪的 custom_data（gun 为枪名）。投射物类的枪命中在之后的 tick 才算，不扣
execute if items entity @s weapon *[custom_data~{tag:["rocketlauncher_ammo"]}] run return fail
execute if items entity @s weapon *[custom_data~{tag:["snowballcannon_ammo"]}] run return fail
execute if items entity @s weapon *[custom_data~{tag:["airgun_ammo"]}] run return fail
execute if items entity @s weapon *[custom_data~{tag:["aurora_ammo"]}] run return fail
execute if items entity @s weapon *[custom_data~{tag:["rainbowrocketlauncher_ammo"]}] run return fail
# 先把这一枪所有没打中的子弹的命中金钱加起来，再统一按比例算一次（向上取整）：
# 霰弹每颗只有几块钱，逐颗向上取整的话每颗都是 1，扣的钱就等于没打中的颗数
scoreboard players set #loss perk 0
$scoreboard players operation #loss perk = gold weapon.gun_$(gun)
scoreboard players operation #loss perk *= #miss perk
function map:perk/gold_thrower/loss
execute if score #loss perk matches ..0 run return fail
scoreboard players operation #loss perk < @s gold
scoreboard players operation @s gold -= #loss perk
scoreboard players operation #loss perk *= -1 number
tellraw @s [{translate:"zb.item.gold0",with:[{score:{name:"#loss",objective:"perk"},color:gold}]}]
