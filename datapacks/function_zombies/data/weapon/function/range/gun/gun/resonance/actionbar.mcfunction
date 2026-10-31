# Reload and higher-priority system messages retain their normal precedence.
scoreboard players set @s[scores={system.actionbar=3..}] system.actionbar 3
execute if score @s weapon.res_charge matches 1000.. run return run title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.resonance.actionbar.1",with:[{keybind:"key.drop",color:"dark_blue",bold:true}]}
title @s[scores={system.actionbar=3}] actionbar {translate:"zb.item.gun.resonance.actionbar.0",with:[{score:{name:"@s",objective:"weapon.res_charge"},color:"aqua"},{text:"1000",color:"aqua"}]}
