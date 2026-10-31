
$execute store result score zombie_count round run data get storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave0)}].mob[$(mob_list)].count
$data modify storage round root.id set from storage round mob_spawn_list[{round:$(round)}].wave[{wave:$(wave0)}].mob[$(mob_list)].id
execute positioned 0.0 0.0 0.0 run function map:round/detect/if_mob with storage round root
execute if score if round matches 0 run return fail
$scoreboard players operation round$(round).wave$(wave0) round += zombie_count round
#$tellraw @a [{text:"round$(round).wave$(wave0):"},{score:{name:"round$(round).wave$(wave0)",objective:round}}]