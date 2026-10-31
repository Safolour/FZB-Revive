# §c§l炸弹恶魂§r（2 个能力，鼠标移到能力名上看说明）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 73
function map:area/lab/monhan/dialog/say {t:"tips.enemy.0"}
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.dropship.name"}]
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.dropship.lore"}]
function map:area/lab/monhan/dialog/gap
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.dropship.skill0.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.dropship.skill0.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.dropship.skill1.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.dropship.skill1.lore"}}}]}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"tips.enemy.1",i:1}
function map:area/lab/monhan/dialog/gap
