# 名字列表里计时不在进行中的加成删掉，再把第一个的分隔符清掉（powerup/bossbar/tick 在列表非空时调用）
execute unless score timer powerup.timer.instakill matches 1.. run function map:powerup/bossbar/clean0 {powerup:instakill}
execute unless score timer powerup.timer.doublegold matches 1.. run function map:powerup/bossbar/clean0 {powerup:doublegold}
execute unless score timer powerup.timer.triplegold matches 1.. run function map:powerup/bossbar/clean0 {powerup:triplegold}
execute unless score timer powerup.timer.quadruplegold matches 1.. run function map:powerup/bossbar/clean0 {powerup:quadruplegold}
execute unless score timer powerup.timer.shoppingspree matches 1.. run function map:powerup/bossbar/clean0 {powerup:shoppingspree}
