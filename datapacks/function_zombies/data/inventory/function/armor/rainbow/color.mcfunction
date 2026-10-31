
scoreboard players set color armor.rainbow_armor 0
scoreboard players operation color armor.rainbow_armor += @s armor.rainbow_armor.r
scoreboard players operation color armor.rainbow_armor += @s armor.rainbow_armor.g
scoreboard players operation color armor.rainbow_armor += @s armor.rainbow_armor.b

execute if items entity @s armor.head leather_helmet run item replace block 1 -60 1 container.26 from entity @s armor.head
execute if items entity @s armor.head leather_helmet run function inventory:armor/rainbow/color0
execute if items entity @s armor.head leather_helmet run item replace entity @s armor.head from block 1 -60 1 container.26

execute if items entity @s armor.chest leather_chestplate run item replace block 1 -60 1 container.26 from entity @s armor.chest
execute if items entity @s armor.chest leather_chestplate run function inventory:armor/rainbow/color0
execute if items entity @s armor.chest leather_chestplate run item replace entity @s armor.chest from block 1 -60 1 container.26

execute if items entity @s armor.legs leather_leggings run item replace block 1 -60 1 container.26 from entity @s armor.legs
execute if items entity @s armor.legs leather_leggings run function inventory:armor/rainbow/color0
execute if items entity @s armor.legs leather_leggings run item replace entity @s armor.legs from block 1 -60 1 container.26

execute if items entity @s armor.feet leather_boots run item replace block 1 -60 1 container.26 from entity @s armor.feet
execute if items entity @s armor.feet leather_boots run function inventory:armor/rainbow/color0
execute if items entity @s armor.feet leather_boots run item replace entity @s armor.feet from block 1 -60 1 container.26

#stopsound @s * item.armor.equip_leather