# “退钱！！”：退 1000，取消定向（计数不变，之后还能再买）
scoreboard players operation @s gold += lucky.price monhan
scoreboard players set @s monhan.lucky_set 0
execute store result storage monhan pick.uuid int 1 run scoreboard players get @s uuid
function map:area/lab/monhan/page/lucky/refund0 with storage monhan pick
data remove storage monhan pick
playsound entity.experience_orb.pickup record @s ~ ~ ~ 1 1

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 55
scoreboard players operation #price monhan = lucky.price monhan
function map:area/lab/monhan/dialog/say_price {t:"luckychest.18"}
function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.19",i:1}
function map:area/lab/monhan/dialog/gap
