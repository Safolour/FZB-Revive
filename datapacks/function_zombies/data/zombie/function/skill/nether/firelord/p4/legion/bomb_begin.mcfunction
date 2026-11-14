tag @s remove firelord.p4.legion.wave3
tag @s add firelord.p4.legion.bomb
kill @e[type=marker,tag=firelord.p4.legion.target]
execute unless entity @e[type=ghast,tag=firelord.p2.ghast] positioned 300.5 104.7 150.1 run function zombie:skill/nether/firelord/p2/ghast/spawn
execute unless entity @e[type=marker,tag=firelord.p2.ghast.target] run summon marker 300.5 100 150 {Tags:["mob.skill","firelord.p2.ghast.target"]}
function zombie:skill/nether/firelord/p2/bomb_begin
