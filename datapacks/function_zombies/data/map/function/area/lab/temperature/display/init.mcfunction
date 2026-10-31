# 新版相对温度显示器：抛光闪长岩台阶外壳 + 黑底屏幕 + 标题 + 数码管数字，正面朝 +x（yaw -90，和新版地图存档里的 Rotation 一致）
# 数字只有一组 5 层：中间不透明，上下左右 4 层 70 透明度做发光（偏移沿世界 y/z 轴，所以屏幕必须正对 ±x）；初始是 88.8 底纹，update 把这一组改成当前温度
# 坐标必须带小数点：summon 的整数坐标会被吸到方块中心（+0.5），整套位置是录像里的原值
# 旧版的玩家头 + 避雷针 + 盔甲架已删除
kill @e[tag=area.lab.temperature.display]

summon block_display 289.3 93.35 165.0 {Tags:["area","area.lab.temperature.display"],block_state:{Name:"minecraft:polished_diorite_slab",Properties:{type:"bottom",waterlogged:"false"}},brightness:{block:10,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,1f,0.8f]}}
# 屏幕黑底（文字统一沿朝向前移 0.1，照录像）
summon text_display 290.0001 93.45 165.51 {Tags:["area","area.lab.temperature.display"],Rotation:[-90f,0f],text:"      ",background:-16777216,brightness:{block:10,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
# 标题“相对温度显示器”（录像里只开 shadow，不开 see_through）
summon text_display 290.0002 93.73 165.51 {Tags:["area","area.lab.temperature.display"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.0"},background:0,shadow:1b,brightness:{block:10,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.2f,0.2f,0.2f]}}
# 数字 5 层：中间不透明，上下左右四层 70 透明度做发光（坐标照录像）
summon text_display 290.00025 93.485 165.51 {Tags:["area","area.lab.temperature.display","area.lab.temperature.display.value"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.1",with:["§488.8"]},background:0,brightness:{block:15,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f]}}
summon text_display 290.00021 93.485 165.4927 {Tags:["area","area.lab.temperature.display","area.lab.temperature.display.value"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.1",with:["§488.8"]},background:0,text_opacity:70b,brightness:{block:15,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f]}}
summon text_display 290.00022 93.485 165.5273 {Tags:["area","area.lab.temperature.display","area.lab.temperature.display.value"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.1",with:["§488.8"]},background:0,text_opacity:70b,brightness:{block:15,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f]}}
summon text_display 290.00023 93.4677 165.51 {Tags:["area","area.lab.temperature.display","area.lab.temperature.display.value"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.1",with:["§488.8"]},background:0,text_opacity:70b,brightness:{block:15,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f]}}
summon text_display 290.00024 93.5023 165.51 {Tags:["area","area.lab.temperature.display","area.lab.temperature.display.value"],Rotation:[-90f,0f],text:{translate:"zb.area.temperature.display.1",with:["§488.8"]},background:0,text_opacity:70b,brightness:{block:15,sky:0},transformation:{translation:[0f,0f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f]}}
# 点击区域（右键显示说明，见 tick0_0）
summon interaction 289.7 93.35 165.5 {width:0.8f,height:0.5f,Tags:["area","interactable","area.lab.temperature.display","area.lab.temperature.display.4"],data:{}}

function map:area/lab/temperature/display/update
