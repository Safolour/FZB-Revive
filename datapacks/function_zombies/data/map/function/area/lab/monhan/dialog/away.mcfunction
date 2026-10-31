# 玩家走开：Monhan 说一句告别语（录像：1-20 回合 away.4.*，21-40 回合 away.5.*，41 回合起 away.6.*），对话结束
scoreboard players set @s monhan.page 0
tellraw @s {translate:"zb.dialog.monhan.n1"}
data modify storage monhan away.p set value "away.4"
execute if score round game.state matches 21..40 run data modify storage monhan away.p set value "away.5"
execute if score round game.state matches 41.. run data modify storage monhan away.p set value "away.6"
execute store result storage monhan away.n int 1 run random value 0..2
function map:area/lab/monhan/dialog/away0 with storage monhan away
data remove storage monhan away
