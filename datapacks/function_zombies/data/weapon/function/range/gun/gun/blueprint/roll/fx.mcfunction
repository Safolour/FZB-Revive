# 粒子：一半 dust、一半 dust_color_transition，颜色 0..16777215 随机，scale 0.7（录像 382 把：198 / 184）
execute store result storage weapon bp.fx.a int 1 run random value 0..16777215
execute store result storage weapon bp.fx.b int 1 run random value 0..16777215
execute store result score #bp_c weapon.state run random value 0..1
execute if score #bp_c weapon.state matches 0 run function weapon:range/gun/gun/blueprint/roll/fx_dust with storage weapon bp.fx
execute if score #bp_c weapon.state matches 1 run function weapon:range/gun/gun/blueprint/roll/fx_transition with storage weapon bp.fx
# 音效 7 选 1，音调 0~2
execute store result storage weapon bp.fx.i int 1 run random value 0..6
function weapon:range/gun/gun/blueprint/roll/fx_sound with storage weapon bp.fx
execute store result storage weapon bp.comp."minecraft:custom_data".stat.pitch float 0.001 run random value 0..2000
data remove storage weapon bp.fx
