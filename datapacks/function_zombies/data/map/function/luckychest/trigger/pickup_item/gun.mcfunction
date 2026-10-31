
scoreboard players operation uuid luckychest.user_uuid = @s luckychest.user_uuid
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run return run tellraw @s [{translate:zb.luckychest.tellraw.4}]
$execute if items entity @p[tag=chosen] weapon *[custom_data~{tag:["$(id)_ammo"]}] run return run function map:luckychest/trigger/refill with entity @p[tag=chosen] SelectedItem.components."minecraft:custom_data"
$execute as @p[tag=chosen] if items entity @s container.* *[custom_data~{tag:["$(id)_ammo"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute as @p[tag=chosen] if items entity @s container.* *[custom_data~{tag:["$(id)_ammo"]}] run return run tellraw @s [{translate:"zb.luckychest.tellraw.9"}]
$execute if items entity @p[tag=chosen] container.* *[custom_data~{tag:["weapon_slot"]}] run return run function map:luckychest/trigger/pickup_item/gun0 {item:$(id)}
$execute if items entity @p[tag=chosen] weapon *[custom_data~{tag:["gun"]}] run return run function map:luckychest/trigger/pickup_item/gun0 {item:$(id)}
tellraw @p[tag=chosen] [{translate:"zb.luckychest.tellraw.10"}]
execute as @p[tag=chosen] at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0