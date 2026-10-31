

#say ========
#tellraw @a [{"score":{"name":"tick","objective":"system.stat"}}]
execute as @a run function weapon:range/gun/gun/aurora/sample_speed
function player_motion:internal/technical/tick

execute store result score online player_count run execute if entity @a
execute store result score alive player_count run execute if entity @e[type=player]
execute store result score in_game player_count run execute if entity @a[scores={system.room=3..}]

data modify storage time root.output set from block 2 -60 1 LastOutput.text
data modify storage time root.hour set string storage time root.output 1 3
data modify storage time root.minute set string storage time root.output 4 6
data modify storage time root.second set string storage time root.output 7 9
execute as @a at @s run function system:tick2
function zombie:tick2
execute as @e[type=!player] run function system:tick1
execute as @a run function system:tick0
tag @a[tag=tick0_0] remove tick0_0

function decoration:tick
function map:tick
function mainlobby:tick

function system:player_change/0

execute if data storage revive root.down.target0 run data remove storage revive root.down.target0