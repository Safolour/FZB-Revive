# 以申请者身份执行
function mainlobby:spectator/clear
tellraw @a[scores={system.room=4..}] {translate:"zb.mainlobby.spectator.3",with:[{selector:"@a[tag=spectator.answerer,limit=1]"},{selector:"@s",color:"white"}]}
tellraw @s {translate:"zb.mainlobby.spectator.3.0",with:[{selector:"@a[tag=spectator.answerer,limit=1]"}]}
