# 执行位置 = 光束起点，朝向 = 玩家朝向
# 录像：5 个 item_display，item_model custom:laser1（八角管，沿 z 长 1 格；item_display 自带绕 Y 转 180°，z 缩放 100 = 往前 100 格），
#   scale [s,s,100]，s = 1.0/0.8/0.6/0.4/0.2，亮度 block 15 / sky 0；贴图是 alpha 40 的纯红，叠起来中间更亮
summon item_display ~ ~ ~ {Tags:["gun","function_laser","laser_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:laser1"}},brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,100f]}}
scoreboard players set @e[type=item_display,tag=laser_new,limit=1] weapon.laser_s 100
tag @e[type=item_display,tag=laser_new] add laser_new0
tag @e[type=item_display,tag=laser_new] remove laser_new
summon item_display ~ ~ ~ {Tags:["gun","function_laser","laser_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:laser1"}},brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,100f]}}
scoreboard players set @e[type=item_display,tag=laser_new,limit=1] weapon.laser_s 80
tag @e[type=item_display,tag=laser_new] add laser_new0
tag @e[type=item_display,tag=laser_new] remove laser_new
summon item_display ~ ~ ~ {Tags:["gun","function_laser","laser_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:laser1"}},brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,100f]}}
scoreboard players set @e[type=item_display,tag=laser_new,limit=1] weapon.laser_s 60
tag @e[type=item_display,tag=laser_new] add laser_new0
tag @e[type=item_display,tag=laser_new] remove laser_new
summon item_display ~ ~ ~ {Tags:["gun","function_laser","laser_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:laser1"}},brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,100f]}}
scoreboard players set @e[type=item_display,tag=laser_new,limit=1] weapon.laser_s 40
tag @e[type=item_display,tag=laser_new] add laser_new0
tag @e[type=item_display,tag=laser_new] remove laser_new
summon item_display ~ ~ ~ {Tags:["gun","function_laser","laser_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:laser1"}},brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,100f]}}
scoreboard players set @e[type=item_display,tag=laser_new,limit=1] weapon.laser_s 20
tag @e[type=item_display,tag=laser_new] add laser_new0
tag @e[type=item_display,tag=laser_new] remove laser_new
# 朝向 = 玩家朝向；laser_t 从 0 开始；生成当 tick 不播动画（weapon.ashes_born 记生成 tick）
execute as @e[type=item_display,tag=laser_new0] positioned as @s run tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set @e[type=item_display,tag=laser_new0] weapon.laser_t 0
execute store result score @e[type=item_display,tag=laser_new0] weapon.ashes_born run time query gametime
tag @e[type=item_display,tag=laser_new0] remove laser_new0
