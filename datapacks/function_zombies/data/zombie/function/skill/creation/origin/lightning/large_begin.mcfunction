function zombie:skill/creation/origin/volley/finish
scoreboard players set @s origin.big 1
tp @s 300.5 92.0625 150.5
execute at @s run function zombie:skill/creation/origin/lightning/setup
data merge entity @s {NoAI:1b}
execute at @s summon item_display run function zombie:skill/creation/origin/lightning/circle
data modify entity @e[type=item_display,tag=origin.light.new,limit=1] transformation.scale set value [10f,3f,10f]
tag @e[type=item_display,tag=origin.light.new] remove origin.light.new
execute at @s summon item_display run function zombie:skill/creation/origin/lightning/circle
data modify entity @e[type=item_display,tag=origin.light.new,limit=1] transformation.scale set value [25f,3f,25f]
tag @e[type=item_display,tag=origin.light.new] remove origin.light.new
execute at @s summon item_display run function zombie:skill/creation/origin/lightning/circle
data modify entity @e[type=item_display,tag=origin.light.new,limit=1] transformation.scale set value [40f,3f,40f]
tag @e[type=item_display,tag=origin.light.new] remove origin.light.new
title @a[scores={system.room=4..},distance=..80] times 0 100 10
title @a[scores={system.room=4..},distance=..80] subtitle {translate:"zb.zombie.origin.title.7"}
title @a[scores={system.room=4..},distance=..80] title {translate:"zb.zombie.laser"}
tellraw @a[scores={system.room=4..},distance=..80] {translate:"zb.zombie.origin.tellraw.7",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.name.creation.origin.lightning"}]}
