# 显示掉落物丢失时，从独立备份重建，保留完整物品组件。
summon item ~ ~ ~ {Tags:["area","area.lab.showcase.display","display"],PickupDelay:-1,Age:-32768,NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",count:1}}
data modify entity @n[type=item,tag=area.lab.showcase.display] Item set from storage map:showcase item
data modify entity @n[type=item,tag=area.lab.showcase.display] data.name set from storage map:showcase item.components."minecraft:custom_name"
