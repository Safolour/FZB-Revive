
$execute store result score max_wave round run data get storage round mob_spawn_list[{round:$(round)}].wave
#$execute store result score timer round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:0}].time
scoreboard players set timer round 0
$execute store result score complete round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:0}].complete
$execute store result score nostartsound round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:0}].nostartsound
