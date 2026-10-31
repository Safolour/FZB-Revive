function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 63
function map:area/lab/monhan/dialog/say {t:"perk.8"}
function map:area/lab/monhan/dialog/opt {c:3,t:"perk.9",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"perk.10",i:2}
function map:area/lab/monhan/dialog/gap
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
