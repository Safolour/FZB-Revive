tag @s add titan.sword.model
tag @s add mob.skill
scoreboard players operation @s origin.owner = #owner origin.owner
# Raw display metadata: scale 4, glowing aqua outline 65535, normalized left quaternion.
data merge entity @s {item:{id:"minecraft:diamond_sword",count:1},Glowing:1b,glow_color_override:65535,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0.90331215f,0.4289839f],scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]},view_range:1f}
