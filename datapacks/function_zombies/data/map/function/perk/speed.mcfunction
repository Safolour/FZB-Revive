# 速度（speed）：持有者每 tick 由 map:perk/tick 调用
# 等级 = 背包里速度物品的数量（1/2/3，录像里最高见过速度 III），手持右键切换（map:perk/speed/switch）
# 右键：游戏里玩家眼前有交互实体（interaction:tick0），右键打在它上面不会触发胡萝卜钓竿的使用统计，
#   所以读 interaction.right_click（交互实体被右键 / 胡萝卜钓竿被使用都会设上），本 tick 末尾由 system:tick0 清零
execute store result score #lv perk if items entity @s container.* *[custom_data~{tag:["speed"]}]
execute if score #lv perk matches ..1 run effect give @s speed 1 0 true
execute if score #lv perk matches 2 run effect give @s speed 1 1 true
execute if score #lv perk matches 3.. run effect give @s speed 1 2 true
execute if score @s interaction.right_click matches 1.. if items entity @s weapon.mainhand *[custom_data~{tag:["speed"]}] run function map:perk/speed/switch
