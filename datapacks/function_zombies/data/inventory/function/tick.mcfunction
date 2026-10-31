
execute unless score @s inventory.armor0 = @s inventory.armor run function inventory:armor
execute if entity @s[tag=inventory.changed,scores={inventory.lock=1}] run function inventory:item_store

execute if entity @s[scores={armor.rainbow_armor=1}] run function inventory:armor/rainbow/tick