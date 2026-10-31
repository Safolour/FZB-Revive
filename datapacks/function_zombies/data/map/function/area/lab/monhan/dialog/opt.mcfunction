# 一个选项：$(c) = 颜色档（zb.dialog.monhan.1 红 ▶ … .9；录像里普通选项 3 黄、建议 5 青、购买确认 4 绿、返回/取消 1 红），$(t) = 文本键，$(i) = 序号
$scoreboard players set #v monhan $(i)
scoreboard players operation #v monhan += @s monhan.key
execute store result storage monhan opt.v int 1 run scoreboard players get #v monhan
$data modify storage monhan opt.c set value $(c)
$data modify storage monhan opt.t set value "$(t)"
function map:area/lab/monhan/dialog/opt0 with storage monhan opt
data remove storage monhan opt
