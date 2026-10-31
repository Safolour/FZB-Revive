
$execute store result score mob_list round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave0)}].mob
scoreboard players set mob_list0 round 1
scoreboard players set zombie_left.remaining round 0
$scoreboard players set round$(round).wave$(wave0) round 0
function map:round/start_round/2_1
$scoreboard players operation zombie_left.remaining game.state += round$(round).wave$(wave0) round