# 以申请者身份执行
function mainlobby:spectator/clear
# 申请者已经不在主大厅（同一 tick 里刚离开）就当作过期
execute unless entity @s[scores={system.room=1..2}] run return run tellraw @a[tag=spectator.answerer] {translate:"zb.mainlobby.spectator.8"}
tellraw @a[scores={system.room=4..}] {translate:"zb.mainlobby.spectator.2",with:[{selector:"@a[tag=spectator.answerer,limit=1]"},{selector:"@s",color:"white"}]}
tellraw @s {translate:"zb.mainlobby.spectator.2.0",with:[{selector:"@a[tag=spectator.answerer,limit=1]"}]}
function mainlobby:spectator/join
