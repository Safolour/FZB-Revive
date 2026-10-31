

execute if score timer powerup.timer.instakill matches 0.. run scoreboard players remove timer powerup.timer.instakill 1
execute if score timer powerup.timer.doublegold matches 0.. run scoreboard players remove timer powerup.timer.doublegold 1
execute if score timer powerup.timer.triplegold matches 0.. run scoreboard players remove timer powerup.timer.triplegold 1
execute if score timer powerup.timer.quadruplegold matches 0.. run scoreboard players remove timer powerup.timer.quadruplegold 1
execute if score timer powerup.timer.shoppingspree matches 0.. run scoreboard players remove timer powerup.timer.shoppingspree 1

execute if score timer powerup.timer.instakill matches 0 run function map:powerup/bossbar/remove {powerup:instakill}
execute if score timer powerup.timer.doublegold matches 0 run function map:powerup/bossbar/remove {powerup:doublegold}
execute if score timer powerup.timer.triplegold matches 0 run function map:powerup/bossbar/remove {powerup:triplegold}
execute if score timer powerup.timer.quadruplegold matches 0 run function map:powerup/bossbar/remove {powerup:quadruplegold}
execute if score timer powerup.timer.shoppingspree matches 0 run function map:powerup/bossbar/remove {powerup:shoppingspree}

# 兜底：计时不在进行中的加成从名字列表里删掉（计时被直接改成 0 以下、没经过“正好 0”那一 tick 时会残留）
execute if data storage powerup bossbar.name[0][0] run function map:powerup/bossbar/clean

scoreboard players set bossbar powerup 0
execute if score timer powerup.timer.instakill matches 1.. run scoreboard players set bossbar powerup 1
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players set bossbar powerup 1
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players set bossbar powerup 1
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players set bossbar powerup 1
execute if score timer powerup.timer.shoppingspree matches 1.. run scoreboard players set bossbar powerup 1

execute unless score bossbar0 powerup = bossbar powerup run function map:powerup/bossbar/visible
execute if score bossbar powerup matches 0 run return fail

scoreboard players operation time powerup.timer = timer powerup.timer.instakill
scoreboard players operation time powerup.timer > timer powerup.timer.doublegold
scoreboard players operation time powerup.timer > timer powerup.timer.triplegold
scoreboard players operation time powerup.timer > timer powerup.timer.quadruplegold
scoreboard players operation time powerup.timer > timer powerup.timer.shoppingspree
function map:powerup/time
function map:powerup/bossbar/tick0 with storage powerup root
function map:powerup/bossbar/tick1 with storage powerup bossbar
data remove storage powerup root