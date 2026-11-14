execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
scoreboard players remove @s titan.followup 2
function zombie:skill/creation/titan/scatter/start
