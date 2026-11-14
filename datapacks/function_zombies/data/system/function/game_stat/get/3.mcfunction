execute if score #invalid fzb.attr matches 1 run return 0


$execute store result score times_knock_down system.stat run data get storage stat root.player.$(type).$(name).times_knock_down
$scoreboard players operation times_knock_down system.stat += $(name) stat.times_knock_down

$execute store result score death system.stat run data get storage stat root.player.$(type).$(name).death
$scoreboard players operation death system.stat += $(name) stat.death

$execute store result score zombie_kill system.stat run data get storage stat root.player.$(type).$(name).zombie_kill
$scoreboard players operation zombie_kill system.stat += $(name) zombie.kill

$execute store result score player_revived system.stat run data get storage stat root.player.$(type).$(name).player_revived
$scoreboard players operation player_revived system.stat += $(name) stat.player_revived

$execute store result score door_open system.stat run data get storage stat root.player.$(type).$(name).door_open
$scoreboard players operation door_open system.stat += $(name) door.open

$execute store result score gun_hit system.stat run data get storage stat root.player.$(type).$(name).gun_hit
$execute store result score gun_shot system.stat run data get storage stat root.player.$(type).$(name).gun_shot
$execute store result score gun_headshot system.stat run data get storage stat root.player.$(type).$(name).gun_headshot

$scoreboard players operation gun_hit system.stat += $(name) weapon.gun_hit
$scoreboard players operation gun_shot system.stat += $(name) weapon.gun_shot
$scoreboard players operation gun_headshot system.stat += $(name) weapon.gun_headshot

# 没开过枪 / 没命中过时为 0（除以 0 会失败，结果会停在 命中×100）
scoreboard players set accuracy system.stat 0
execute if score gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat = gun_hit system.stat
execute if score gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat *= 100 number
execute if score gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat /= gun_shot system.stat
scoreboard players operation gun_accuracy system.stat = accuracy system.stat

scoreboard players set accuracy system.stat 0
execute if score gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat = gun_headshot system.stat
execute if score gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat *= 100 number
execute if score gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat /= gun_hit system.stat
scoreboard players operation gun_headshot_accuracy system.stat = accuracy system.stat


$execute store result score win system.stat run data get storage stat root.player.$(type).$(name).win
scoreboard players operation win system.stat += win stat.win

$execute store result score total_round system.stat run data get storage stat root.player.$(type).$(name).total_round
scoreboard players operation total_round system.stat += round stat.total_round

$execute store result score best_round system.stat run data get storage stat root.player.$(type).$(name).best_round
scoreboard players operation best_round system.stat > round stat.total_round

$execute store result score window_repaired system.stat run data get storage stat root.player.$(type).$(name).window_repaired
$scoreboard players operation window_repaired system.stat += $(name) stat.window_repaired

#execute store result storage game root.stat.time.second int 1 run scoreboard players get second game.timer
#execute store result storage game root.stat.time.minute int 1 run scoreboard players get minute game.timer
#execute store result storage game root.stat.time.hour int 1 run scoreboard players get hour game.timer

scoreboard players operation second system.stat = second game.timer
scoreboard players operation minute system.stat = minute game.timer
scoreboard players operation hour system.stat = hour game.timer
execute store result storage game root.stat.time.second int 1 run scoreboard players get second game.timer
execute store result storage game root.stat.time.minute int 1 run scoreboard players get minute game.timer
execute store result storage game root.stat.time.hour int 1 run scoreboard players get hour game.timer
function map:game/scoreboard/time0 with storage game root.stat.time
$data modify storage game root.stat.time.type set value $(type)
$data modify storage game root.stat.time.name set value $(name)

scoreboard players operation minute system.stat *= 60 number
scoreboard players operation hour system.stat *= 3600 number
scoreboard players operation time system.stat = second system.stat
scoreboard players operation time system.stat += minute system.stat
scoreboard players operation time system.stat += hour system.stat

$execute store result score fastest_win system.stat run data get storage stat root.player.$(type).$(name).fastest_win
$execute unless data storage stat root.player.$(type).$(name).fastest_win run scoreboard players set fastest_win system.stat 2147483647
scoreboard players operation fastest_win system.stat < time system.stat


$execute store result storage stat root.player.$(type).$(name).times_knock_down int 1 run scoreboard players get times_knock_down system.stat
$execute store result storage stat root.player.$(type).$(name).death int 1 run scoreboard players get death system.stat
$execute store result storage stat root.player.$(type).$(name).zombie_kill int 1 run scoreboard players get zombie_kill system.stat
$execute store result storage stat root.player.$(type).$(name).player_revived int 1 run scoreboard players get player_revived system.stat
$execute store result storage stat root.player.$(type).$(name).door_open int 1 run scoreboard players get door_open system.stat
$execute store result storage stat root.player.$(type).$(name).gun_hit int 1 run scoreboard players get gun_hit system.stat
$execute store result storage stat root.player.$(type).$(name).gun_shot int 1 run scoreboard players get gun_shot system.stat
$execute store result storage stat root.player.$(type).$(name).gun_headshot int 1 run scoreboard players get gun_headshot system.stat
$execute store result storage stat root.player.$(type).$(name).gun_accuracy int 1 run scoreboard players get gun_accuracy system.stat
$execute store result storage stat root.player.$(type).$(name).gun_headshot_accuracy int 1 run scoreboard players get gun_headshot_accuracy system.stat
$execute store result storage stat root.player.$(type).$(name).win int 1 run scoreboard players get win system.stat
$execute store result storage stat root.player.$(type).$(name).total_round int 1 run scoreboard players get total_round system.stat
$execute store result storage stat root.player.$(type).$(name).best_round int 1 run scoreboard players get best_round system.stat
$execute store result storage stat root.player.$(type).$(name).window_repaired int 1 run scoreboard players get window_repaired system.stat
$execute if score win stat.win matches 1 store result storage stat root.player.$(type).$(name).fastest_win int 1 run scoreboard players get fastest_win system.stat
execute if score win stat.win matches 1 run function system:game_stat/get/3_0 with storage game root.stat.time

$function system:game_stat/get/4 {name:$(name)}


data remove storage game root