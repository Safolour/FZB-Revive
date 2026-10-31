summon minecraft:item_display ~ ~1.4 ~ {Tags:["chosen","head"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~0.25 ~1.4 ~ {Tags:["chosen","arm_r"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-1024.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~-0.25 ~1.4 ~ {Tags:["chosen","arm_l"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-2048.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~ ~1.4 ~ {Tags:["chosen","torso"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-3072.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~0.125 ~0.7 ~ {Tags:["chosen","leg_r"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-4096.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon minecraft:item_display ~-0.125 ~0.7 ~ {Tags:["chosen","leg_l"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-5120.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$item replace entity @e[tag=chosen,tag=head] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/head",minecraft:profile="$(name)"]
#$item replace entity @e[tag=chosen,tag=arm_r] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_arm",minecraft:profile="$(name)"]
#$item replace entity @e[tag=chosen,tag=arm_l] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_arm",minecraft:profile="$(name)"]
$item replace entity @e[tag=chosen,tag=arm_r] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_arm",minecraft:profile="$(name)",custom_model_data={strings:[slim]}]
$item replace entity @e[tag=chosen,tag=arm_l] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_arm",minecraft:profile="$(name)",custom_model_data={strings:[slim]}]
$item replace entity @e[tag=chosen,tag=torso] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/torso",minecraft:profile="$(name)"]
$item replace entity @e[tag=chosen,tag=leg_r] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_leg",minecraft:profile="$(name)"]
$item replace entity @e[tag=chosen,tag=leg_l] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_leg",minecraft:profile="$(name)"]

tag @e[type=item_display,tag=chosen] remove chosen
