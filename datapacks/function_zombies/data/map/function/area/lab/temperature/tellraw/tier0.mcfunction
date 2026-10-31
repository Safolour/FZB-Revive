# 录像原文：zb.area.temperature.tellraw.0 = 温度已到达 N 度！<效果>  你可以在 Monhan 处购买净化或收集净化加成
$execute if score #tier area.temperature matches 1 run tellraw @a[scores={system.room=4..}] {translate:"zb.area.temperature.tellraw.0",with:["$(t)",{translate:"zb.area.temperature.tellraw.1",with:["30%"]},{translate:"zb.zombie.name.monhan",color:"#FF674E"}]}
$execute if score #tier area.temperature matches 2 run tellraw @a[scores={system.room=4..}] {translate:"zb.area.temperature.tellraw.0",with:["$(t)",{translate:"zb.area.temperature.tellraw.2"},{translate:"zb.zombie.name.monhan",color:"#FF674E"}]}
$execute if score #tier area.temperature matches 3 run tellraw @a[scores={system.room=4..}] {translate:"zb.area.temperature.tellraw.0",with:["$(t)",{translate:"zb.area.temperature.tellraw.1",with:["60%"]},{translate:"zb.zombie.name.monhan",color:"#FF674E"}]}
$execute if score #tier area.temperature matches 4 run tellraw @a[scores={system.room=4..}] {translate:"zb.area.temperature.tellraw.0",with:["$(t)",{translate:"zb.area.temperature.tellraw.3"},{translate:"zb.zombie.name.monhan",color:"#FF674E"}]}
$execute if score #tier area.temperature matches 5 run tellraw @a[scores={system.room=4..}] {translate:"zb.area.temperature.tellraw.0",with:["$(t)",{translate:"zb.area.temperature.tellraw.4"},{translate:"zb.zombie.name.monhan",color:"#FF674E"}]}
execute if score #tier area.temperature matches 4.. run title @a[scores={system.room=4..,title.color.enable=0}] times 0 60 10
execute if score #tier area.temperature matches 4.. run title @a[scores={system.room=4..,title.color.enable=0}] subtitle {translate:"zb.area.temperature.title.1"}
execute if score #tier area.temperature matches 4.. run title @a[scores={system.room=4..,title.color.enable=0}] title {translate:"zb.area.temperature.title.0"}
