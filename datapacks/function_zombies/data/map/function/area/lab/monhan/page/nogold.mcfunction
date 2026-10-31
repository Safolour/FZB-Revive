# 钱不够（#price monhan 为所需金额）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 90
function map:area/lab/monhan/dialog/say_rand {p:"nogold",max:5}
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.27",i:1}
function map:area/lab/monhan/dialog/gap
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
