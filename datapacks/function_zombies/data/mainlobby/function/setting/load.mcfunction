# Settings-room equipment and target are independent of a running match.
function mainlobby:setting/environment/load
function mainlobby:setting/powerup/load
function mainlobby:setting/ultimate/load
function mainlobby:setting/gear/load
function mainlobby:setting/dummy/load
function mainlobby:setting/npc/load
execute as @e[type=zombie,tag=setting.dummy] run data merge entity @s {CustomName:{text:"伤害测试",color:"gold",bold:true,italic:false}}
execute if score tick system.stat matches 1 run function mainlobby:setting/setup
