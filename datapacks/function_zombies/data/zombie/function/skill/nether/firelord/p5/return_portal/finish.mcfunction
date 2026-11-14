execute unless data storage map:r40 p5_closed run return 0
execute unless data storage map:r40 portal_transition run return 0
function zombie:skill/nether/firelord/p5/cleanup_r40
tp @a[scores={system.room=4..,stat.player=1..2}] 300.5 100 132.5 0 0
playsound block.end_portal.spawn hostile @a[scores={system.room=4..}] 300.5 100 132.5 10 0
playsound entity.lightning_bolt.thunder hostile @a[scores={system.room=4..}] 300.5 100 132.5 10 0
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1}] at @s run function zombie:skill/nether/firelord/p5/return_portal/launch
function map:round/trigger/complete
function zombie:skill/nether/firelord/p5/terminal/cleanup
data remove storage map:r40 p5_closed
scoreboard players set round game.state 41
function map:round/start_round/0
data remove storage map:r40 portal_transition
