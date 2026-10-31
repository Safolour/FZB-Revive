# 只读取储量；空储量不改写物品，避免快捷栏物品每 tick 弹动
$execute store result score #ashes_bank weapon.state run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data".ashes_gold 1
