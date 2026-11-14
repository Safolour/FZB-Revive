scoreboard players set @s origin.big 0
function zombie:skill/creation/origin/lightning/setup
execute summon item_display run function zombie:skill/creation/origin/lightning/circle
execute as @e[type=item_display,tag=origin.light.new,limit=1,sort=nearest] run data modify entity @s transformation.scale set value [12f,3f,12f]
tag @e[type=item_display,tag=origin.light.new] remove origin.light.new
title @a[scores={system.room=4..},distance=..80] times 0 60 10
title @a[scores={system.room=4..},distance=..80] subtitle {translate:"zb.zombie.origin.title.1"}
title @a[scores={system.room=4..},distance=..80] title {translate:"zb.zombie.laser"}
tellraw @a[scores={system.room=4..},distance=..80] {translate:"zb.zombie.origin.tellraw.1",with:[{translate:"zb.zombie.name.creation.origin"},{translate:"zb.zombie.name.creation.origin.lightning"}]}
