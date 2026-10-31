
$execute if data storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave)}].extra run function map:round/trigger/wave

$execute store result score timer round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave)}].time
$execute store result score spawn_range round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave)}].spawn_range
$data modify storage round root.mob set from storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave)}].mob

$scoreboard players operation zombie_left.remaining game.state -= round$(round).wave$(wave) round