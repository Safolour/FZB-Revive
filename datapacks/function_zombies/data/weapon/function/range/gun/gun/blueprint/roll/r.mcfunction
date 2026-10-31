# 掷一个 1..100 的整数百分比 #bp_r（有 #bp_p/1000 的概率在 [进度,100] 里取，否则 [1,100]）
execute store result score #bp_c weapon.state run random value 0..999
execute if score #bp_c weapon.state < #bp_p weapon.state run return run function weapon:range/gun/gun/blueprint/roll/r_hi with storage weapon bp
execute store result score #bp_r weapon.state run random value 0..1000
function weapon:range/gun/gun/blueprint/roll/r10
