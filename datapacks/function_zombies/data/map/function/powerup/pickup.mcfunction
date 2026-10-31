scoreboard players set @s powerup.timer -1
$scoreboard players operation time powerup.timer = $(powerup) powerup.timer
tag @p[scores={stat.player=1}] add chosen
function map:powerup/time
$execute if score $(powerup) powerup.timer matches 1.. run tellraw @a[scores={system.room=4}] [{translate:zb.powerup.tellraw.0,with:[{selector:"@p[tag=chosen]"},{translate:zb.powerup.$(powerup).2,with:[{text:""}]},{nbt:"root.time",storage:powerup,color:red}]}]
$execute unless score $(powerup) powerup.timer matches 1.. run tellraw @a[scores={system.room=4}] [{translate:zb.powerup.tellraw.1,with:[{selector:"@p[tag=chosen]"},{translate:zb.powerup.$(powerup).2,with:[{text:""}]}]}]
tag @a[tag=chosen] remove chosen
data remove storage powerup root

title @a[scores={system.room=4..}] times 20 60 10
title @a[scores={system.room=4..,title.color.enable=0}] title [{text:""}]
$title @a[scores={system.room=4..,title.color.enable=0}] subtitle [{translate:zb.powerup.$(powerup).3}]
$function map:powerup/pickup/$(powerup)
$execute unless score $(powerup) powerup.timer matches 1.. run return fail
$execute unless data storage powerup bossbar.name[0][{translate:"zb.powerup.$(powerup).2"}] unless data storage powerup bossbar.name[0][0] run data modify storage powerup bossbar.name[0] append value {translate:zb.powerup.$(powerup).2,with:[{text:""}]}
$execute unless data storage powerup bossbar.name[0][{translate:"zb.powerup.$(powerup).2"}] if data storage powerup bossbar.name[0][0] run data modify storage powerup bossbar.name[0] append value {translate:zb.powerup.$(powerup).2,with:[{text:"§7,§r "}]}
$scoreboard players operation timer powerup.timer.$(powerup) = $(powerup) powerup.timer
