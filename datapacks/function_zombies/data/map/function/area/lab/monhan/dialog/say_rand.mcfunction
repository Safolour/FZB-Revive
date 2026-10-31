# 从 $(p).0 ~ $(p).$(max) 里随机说一句
$execute store result storage monhan rand.n int 1 run random value 0..$(max)
$data modify storage monhan rand.p set value "$(p)"
function map:area/lab/monhan/dialog/say_rand0 with storage monhan rand
data remove storage monhan rand
