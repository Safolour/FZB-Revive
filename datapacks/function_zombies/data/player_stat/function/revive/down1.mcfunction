
tag @s add chosen
# 新版倒地提示需要剩余秒数参数
scoreboard players operation #seconds revive.timer = death.time revive.timer
scoreboard players operation #seconds revive.timer /= 20 number
title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 20 60 20
$tellraw @s [{translate:"zb.revive.tellraw.3",with:[[{selector:"@s"}],$(target),[{translate:"zb.revive.area.$(area)"}],[{score:{name:"#seconds",objective:"revive.timer"},color:"yellow"}]]}]
$tellraw @a[tag=!chosen,scores={system.room=4..}] [{translate:"zb.revive.tellraw.1",with:[[{selector:"@s"}],$(target),[{translate:"zb.revive.area.$(area)"}],[{score:{name:"#seconds",objective:"revive.timer"},color:"yellow"}]]}]
title @a[scores={system.room=4..,title.color.enable=0}] title [{text:""}]
$execute unless entity @s[scores={area=1001}] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle [{translate:"zb.revive.title.0",with:[[{selector:"@s"}],[{text:""}],[{translate:"zb.revive.area.$(area)"}]]}]
$execute if entity @s[scores={area=1001}] run title @a[scores={system.room=4..,title.color.enable=0}] subtitle [{translate:"zb.revive.title.0",with:[[{selector:"@s"}],[{text:""}],[{translate:"zb.revive.area.$(area)",color:"#FF0000"}]]}]
tag @s remove chosen