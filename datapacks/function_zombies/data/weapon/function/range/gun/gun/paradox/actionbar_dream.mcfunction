scoreboard players operation #dreamsec weapon.pd_time = @s weapon.pd_time
scoreboard players operation #dreamsec weapon.pd_time /= #20 weapon.pd_time
title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.paradox.actionbar.5",with:[{score:{name:"#dreamsec",objective:"weapon.pd_time"},color:"dark_purple"},{keybind:"key.drop",color:"aqua",bold:true}]}
