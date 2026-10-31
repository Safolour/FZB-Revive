# 以申请者身份执行：进入正在进行的游戏当旁观者
function map:game/spectator
tellraw @a[scores={system.room=4..}] {translate:"zb.mainlobby.spectator.4",with:[{selector:"@s",color:"white"}]}
