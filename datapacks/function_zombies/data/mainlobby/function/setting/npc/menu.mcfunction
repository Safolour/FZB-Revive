# Preserve per-player opened carts; only replace the public three-layer click target.
execute as @e[type=interaction,tag=setting.gear_capture] run function system:death
summon interaction ~ ~-3.5 ~ {Tags:["setting.gear_capture","reload_capture"],width:9,height:9}
function mainlobby:setting/gear/spawn
