# 从落点反向把目标抛出；命中函数以玩家脚下为执行位置。
# 旋转 180 度得到径向向外方向，固定 -16.5 度上抛角匹配录像速度增量的竖直/水平比例。
scoreboard players operation $strength player_motion.api.launch = #origin.sword.knockback player_motion.api.launch
execute unless items entity @s container.* *[custom_data~{tag:["no_knockback"]}] if entity @e[type=armor_stand,tag=origin.sword.attacker,limit=1] facing entity @e[type=armor_stand,tag=origin.sword.attacker,limit=1] feet rotated ~180 -16.5 run function player_motion:api/launch_looking
