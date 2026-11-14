
# Restore training overlays and save unclaimed menu items before UUIDs are removed.
function mainlobby:setting/environment/reset
function mainlobby:setting/gear/reset
function system:game_stat/get/0
function system:game_stat/store/0

function bs.load:reset
function animated_java:reset
function player_motion:internal/technical/reset
function large_number:reset
scoreboard players set tick system.stat 0
#scoreboard objectives remove system.stat
scoreboard objectives remove system.quitgame
scoreboard objectives remove precedence
scoreboard objectives remove system.freeze
scoreboard objectives remove system.freeze0
scoreboard objectives remove system.room
scoreboard objectives remove system.actionbar
scoreboard objectives remove system.online
scoreboard objectives remove number
scoreboard objectives remove gun.particle
scoreboard objectives remove setting
scoreboard objectives remove setting.action
scoreboard objectives remove particle
scoreboard objectives remove particle0
scoreboard objectives remove nightvision
scoreboard objectives remove nightvision0
scoreboard objectives remove quit
scoreboard objectives remove uuid
scoreboard objectives remove uuid0
scoreboard objectives remove uuid1
scoreboard objectives remove uuid2
scoreboard objectives remove uuid3

scoreboard objectives remove player_count
scoreboard objectives remove time
scoreboard objectives remove base64
data remove storage base64 root
data remove storage time root

function interaction:reset
function map:reset
function mainlobby:reset
function weapon:reset
function inventory:reset
function zombie:reset
function player_stat:reset
function decoration:reset

execute as @a at @s run function system:reset0

tp @e[type=!player] 0.0 -130.0 0.0
execute as @e[type=!player] run function system:death

team remove collision
function map:round/trigger/close/0
forceload add 4 832
forceload remove 300 160
execute store result storage system root.month int 1 run scoreboard players get month system.stat
# Preserve the lobby multipliers before the global scoreboard reset.
execute if score #atk fzb.attr matches 20..180 store result storage fzb:attribute_panel atk int 1 run scoreboard players get #atk fzb.attr
execute if score #def fzb.attr matches 20..180 store result storage fzb:attribute_panel def int 1 run scoreboard players get #def fzb.attr
scoreboard players reset *
execute store result score month system.stat run data get storage system root.month
data remove storage system root

execute as @a at @s run attribute @s attack_speed base set 2.8
execute as @a at @s run attribute @s max_health base set 20

function mainlobby:setting_text
setblock 9 -58 830 air
execute if score tick system.stat matches 1 run return run setblock 9 -58 830 lever[powered=true,face=wall,facing=south]
setblock 9 -58 830 lever[powered=false,face=wall,facing=south]
