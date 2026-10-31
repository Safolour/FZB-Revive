# 选项内容是任意组件：$(c) 颜色档，$(i) 序号，$(comp) 组件（SNBT）
$scoreboard players set #v monhan $(i)
scoreboard players operation #v monhan += @s monhan.key
execute store result storage monhan opt.v int 1 run scoreboard players get #v monhan
$data modify storage monhan opt.c set value $(c)
$data modify storage monhan opt.comp set value '$(comp)'
function map:area/lab/monhan/dialog/opt_comp0 with storage monhan opt
data remove storage monhan opt
