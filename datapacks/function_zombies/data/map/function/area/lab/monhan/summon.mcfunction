# PL 开局生成 Monhan（14 段 PL 录像里都在 291.5 92 170.5，核心实验室门口）
# 录像结构：隐形小骷髅（转头）+ 盔甲架载着 item_display 头（钻石，模型 custom:monhan/0~2 眨眼）和 text_display 名字，0.8×0.8 交互实体
# 这里直接用展示实体自己转头、上下浮动
kill @e[tag=area.lab.monhan]
summon interaction 291.5 93.1 170.5 {width:0.8f,height:0.8f,Tags:["area","interactable","area.lab.monhan","area.lab.monhan.interaction"],data:{}}
summon item_display 291.5 93.7 170.5 {Tags:["area","area.lab.monhan","area.lab.monhan.head"],Rotation:[-96f,0f],teleport_duration:3,item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:monhan/0"}},transformation:{translation:[-0.25f,0.25f,-0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
summon text_display 291.5 94.1 170.5 {Tags:["area","area.lab.monhan","area.lab.monhan.name"],billboard:"center",view_range:0.2f,teleport_duration:20,text:{translate:"zb.zombie.name.monhan",color:"#FF674E",shadow_color:-10092544}}
scoreboard players set #blink monhan 100
scoreboard players set #bob monhan 0
