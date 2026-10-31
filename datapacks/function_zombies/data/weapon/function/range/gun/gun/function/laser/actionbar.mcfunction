# 拿着函数、不在换弹时：动作栏显示充能（优先级 3，比换弹/没子弹提示低）
execute unless score @s weapon.function_charge matches -2147483648.. run scoreboard players set @s weapon.function_charge 0
execute if score @s weapon.function_charge matches 1001.. run scoreboard players set @s weapon.function_charge 1000
execute if entity @s[tag=weapon.laser_charge] run return fail
scoreboard players set @s[scores={system.actionbar=3..}] system.actionbar 3
function weapon:range/gun/gun/function/laser/cap_read
execute if score @s weapon.function_charge matches 1000.. run return run title @s[scores={system.actionbar=3}] actionbar [{translate:"zb.item.gun.function.actionbar.1",with:[{keybind:"key.drop",color:"red",bold:true}]}]
title @s[scores={system.actionbar=3}] actionbar [{translate:"zb.item.gun.function.actionbar.0",with:[{score:{name:"@s",objective:"weapon.function_charge"},color:"aqua"},{score:{name:"@s",objective:"weapon.laser_threshold"},color:"aqua"}]}]
