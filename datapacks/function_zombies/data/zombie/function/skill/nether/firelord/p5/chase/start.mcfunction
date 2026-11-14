attribute @s minecraft:scale base set 1
tag @s remove firelord.p5.breach_wait
tag @s add firelord.p5.chase
tag @s remove firelord.p5.approach
tag @s remove firelord.p5.first_east
tag @s remove firelord.p5.route2.east
tag @s remove firelord.p5.route2.south
scoreboard players set @s fl.id 0
scoreboard players set @s fl.mode 0
function zombie:skill/nether/firelord/p5/chase/room
kill @e[type=marker,tag=firelord.p5.chase.target]
summon marker 300.800 95.930 185.340 {Tags:["mob.skill","firelord.p5.chase.target"]}
