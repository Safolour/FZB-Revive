data remove storage map:r40 p5
execute as @a[gamemode=adventure,scores={system.room=4..,stat.player=1..2}] at @s run function player_stat:revive/death
function map:round/gameover/0
