# §8§l造物§7-§4§l起源§r（11 个能力，鼠标移到能力名上看说明）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 73
function map:area/lab/monhan/dialog/say {t:"tips.enemy.0"}
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.name"}]
tellraw @s [{translate:"zb.dialog.monhan.tab"},{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.lore"}]
function map:area/lab/monhan/dialog/gap
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill0.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill0.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill1.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill1.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill2.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill2.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill3.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill3.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill4.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill4.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill5.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill5.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill6.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill6.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill7.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill7.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill8.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill8.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill9.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill9.lore"}}}]}
tellraw @s {translate:"zb.dialog.monhan.9",with:[{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill10.name",hover_event:{action:"show_text",value:{translate:"zb.dialog.monhan.text.tips.enemy.creationorigin.skill10.lore"}}}]}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"tips.enemy.1",i:1}
function map:area/lab/monhan/dialog/gap
