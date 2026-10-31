
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tag:["clear"]}}}}] run function system:death
execute if entity @s[tag=perk] run function map:shop/interact/perk/menu_reset
execute if entity @s[tag=armor] run function map:shop/interact/armor/menu_reset