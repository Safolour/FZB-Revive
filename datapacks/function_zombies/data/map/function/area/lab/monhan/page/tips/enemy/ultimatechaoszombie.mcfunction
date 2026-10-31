# §c§l终极紊乱僵尸§r（9 个能力，鼠标移到能力名上看说明）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 73
function map:area/lab/monhan/dialog/say {t:"tips.enemy.0"}
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.name"}]
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.lore"}]
function map:area/lab/monhan/dialog/gap
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill0.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill0.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill1.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill1.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill2.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill2.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill3.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill3.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill4.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill4.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill5.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill5.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill6.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill6.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill7.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill7.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill8.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.ultimatechaoszombie.skill8.lore"}}}]}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"tips.enemy.1",i:1}
function map:area/lab/monhan/dialog/gap
