function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 62
function map:area/lab/monhan/dialog/say {t:"perk.5"}
function map:area/lab/monhan/dialog/opt {c:3,t:"perk.6",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"perk.7",i:2}
function map:area/lab/monhan/dialog/gap
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
