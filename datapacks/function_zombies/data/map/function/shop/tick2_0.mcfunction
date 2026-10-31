
$function map:perk/double_bullet {gun:$(item)}
scoreboard players set @s[scores={system.actionbar=5..}] system.actionbar 5
execute unless entity @s[scores={system.actionbar=5}] run return fail
scoreboard players set @s[scores={stat.player=1}] shop.actionbar 1
$execute if items entity @s[scores={stat.player=1}] container.* *[custom_data~{tag:["$(item)_ammo"]}] unless score @s weapon.gun_$(item)_ammo >= #max_ammo perk run return run function map:shop/refill_hint
title @s[scores={stat.player=1}] actionbar [{translate:zb.shop.actionbar.1}]