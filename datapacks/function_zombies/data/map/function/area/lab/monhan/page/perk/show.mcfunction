# “我错过了之前的增益...”（第 41 回合起）：售货机第 15 格轮换位以前卖过、现在不卖的三个子弹增益，原价 + 2500
execute unless score round game.state matches 41.. run return run function map:area/lab/monhan/page/main/show
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 60
function map:area/lab/monhan/dialog/say {t:"perk.1"}
function map:area/lab/monhan/dialog/opt {c:3,t:"perk.2",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"perk.4",i:2}
function map:area/lab/monhan/dialog/gap
