scoreboard players set @s[scores={system.actionbar=3..}] system.actionbar 3
execute if score @s weapon.pd_state matches 2 run return run function weapon:range/gun/gun/paradox/actionbar_dream
scoreboard players operation #fsec weapon.pd_fcd = @s weapon.pd_fcd
scoreboard players operation #fsec weapon.pd_fcd /= #20 weapon.pd_time
scoreboard players operation #qsec weapon.pd_qcd = @s weapon.pd_qcd
scoreboard players operation #qsec weapon.pd_qcd /= #20 weapon.pd_time
execute if score @s weapon.pd_qcd matches 1.. if score @s weapon.pd_fcd matches 1.. run return run title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.paradox.actionbar.2",with:[{score:{name:"@s",objective:"weapon.pd_count"},color:"aqua"},{text:"30",color:"aqua"},{score:{name:"#qsec",objective:"weapon.pd_qcd"},color:"dark_purple"},{score:{name:"#fsec",objective:"weapon.pd_fcd"},color:"dark_purple"}]}
execute if score @s weapon.pd_qcd matches 1.. run return run title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.paradox.actionbar.0",with:[{score:{name:"@s",objective:"weapon.pd_count"},color:"aqua"},{text:"30",color:"aqua"},{score:{name:"#qsec",objective:"weapon.pd_qcd"},color:"dark_purple"},{keybind:"key.swapOffhand",color:"aqua",bold:true}]}
execute if score @s weapon.pd_fcd matches 1.. run return run title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.paradox.actionbar.3",with:[{score:{name:"@s",objective:"weapon.pd_count"},color:"aqua"},{text:"30",color:"aqua"},{keybind:"key.drop",color:"aqua",bold:true},{score:{name:"#fsec",objective:"weapon.pd_fcd"},color:"dark_purple"}]}
title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.paradox.actionbar.1",with:[{score:{name:"@s",objective:"weapon.pd_count"},color:"aqua"},{text:"30",color:"aqua"},{keybind:"key.drop",color:"aqua",bold:true},{keybind:"key.swapOffhand",color:"aqua",bold:true}]}
