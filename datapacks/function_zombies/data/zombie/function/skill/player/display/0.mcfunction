return fail
#function zombie:skill/player/display/0 {name:_447,slim:1}

#slim:0/1
$scoreboard players set slim zombie.player $(slim)

summon marker ^ ^ ^ {Tags:["chosen","skill.zombie.player"]}

summon item_display ~ ~1.4 ~ {Tags:["chosen","head","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~0.25 ~1.4 ~ {Tags:["chosen","arm_r","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-1024.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~-0.25 ~1.4 ~ {Tags:["chosen","arm_l","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-2048.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~ ~1.4 ~ {Tags:["chosen","torso","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-3072.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~0.125 ~0.7 ~ {Tags:["chosen","leg_r","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-4096.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item_display ~-0.125 ~0.7 ~ {Tags:["chosen","leg_l","skill.zombie.player"],item_display:"thirdperson_righthand",view_range:0.6f,transformation:{translation:[0.0f,-5120.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

#name:<player>
$item replace entity @e[type=item_display,tag=chosen,tag=head] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/head",profile="$(name)"]

$execute if score slim zombie.player matches 0 run item replace entity @e[type=item_display,tag=chosen,tag=arm_r] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/right_arm",profile="$(name)"]
$execute if score slim zombie.player matches 0 run item replace entity @e[type=item_display,tag=chosen,tag=arm_l] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/left_arm",profile="$(name)"]

$execute if score slim zombie.player matches 1 run item replace entity @e[type=item_display,tag=chosen,tag=arm_r] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/right_arm",profile="$(name)",custom_model_data={strings:[slim]}]
$execute if score slim zombie.player matches 1 run item replace entity @e[type=item_display,tag=chosen,tag=arm_l] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/left_arm",profile="$(name)",custom_model_data={strings:[slim]}]

$item replace entity @e[type=item_display,tag=chosen,tag=torso] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/torso",profile="$(name)"]
$item replace entity @e[type=item_display,tag=chosen,tag=leg_r] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/right_leg",profile="$(name)"]
$item replace entity @e[type=item_display,tag=chosen,tag=leg_l] hotbar.0 with player_head[item_model="animated_java:blueprint/player_display/left_leg",profile="$(name)"]

scoreboard players add @e[type=item_display,tag=skill.zombie.player] zombie.player 1
scoreboard players add @e[type=marker,tag=skill.zombie.player] zombie.player 1

tag @e[type=item_display,tag=chosen] remove chosen
