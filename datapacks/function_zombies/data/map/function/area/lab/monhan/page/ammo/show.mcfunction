function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 10
scoreboard players operation #price monhan = ammo.price monhan
function map:area/lab/monhan/dialog/say_price {t:"ammo.1"}
function map:area/lab/monhan/dialog/opt {c:4,t:"ammo.2",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"ammo.5",i:2}
function map:area/lab/monhan/dialog/gap
