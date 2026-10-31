
scoreboard players operation uuid luckychest.user_uuid = @s luckychest.user_uuid
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run return run tellraw @s [{translate:zb.luckychest.tellraw.4}]
#$execute as @p[tag=chosen] if items entity @s container.* *[custom_data~{tag:["$(id)"]}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
#$execute as @p[tag=chosen] if items entity @s container.* *[custom_data~{tag:["$(id)"]}] run return run tellraw @s [{translate:zb.luckychest.tellraw.14}]
$execute if items entity @p[tag=chosen] container.* *[custom_data~{tag:["skill_slot"]}] run return run function map:luckychest/trigger/pickup_item/skill0 {item:$(id)}
$execute if items entity @p[tag=chosen] weapon.* *[custom_data~{tag:["skill"]}] run return run function map:luckychest/trigger/pickup_item/skill0 {item:$(id)}

tellraw @p[tag=chosen] [{translate:"zb.luckychest.tellraw.14"}]
execute as @p[tag=chosen] at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0