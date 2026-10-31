# 同 say，参数是 #price monhan（按千位加逗号，录像里是“2,000”）
function map:area/lab/monhan/dialog/fmt
$data modify storage monhan say.t set value "$(t)"
function map:area/lab/monhan/dialog/say_price0 with storage monhan say
