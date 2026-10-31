

$execute store result score times_knock_down system.stat run data get storage stat root.player.$(type).$(name).times_knock_down
scoreboard players operation global.times_knock_down system.stat += times_knock_down system.stat

$execute store result score death system.stat run data get storage stat root.player.$(type).$(name).death
scoreboard players operation global.death system.stat += death system.stat

$execute store result score zombie_kill system.stat run data get storage stat root.player.$(type).$(name).zombie_kill
scoreboard players operation global.zombie_kill system.stat += zombie_kill system.stat

$execute store result score player_revived system.stat run data get storage stat root.player.$(type).$(name).player_revived
scoreboard players operation global.player_revived system.stat += player_revived system.stat

$execute store result score door_open system.stat run data get storage stat root.player.$(type).$(name).door_open
scoreboard players operation global.door_open system.stat += door_open system.stat

$execute store result score gun_hit system.stat run data get storage stat root.player.$(type).$(name).gun_hit
$execute store result score gun_shot system.stat run data get storage stat root.player.$(type).$(name).gun_shot
$execute store result score gun_headshot system.stat run data get storage stat root.player.$(type).$(name).gun_headshot

scoreboard players operation global.gun_hit system.stat += gun_hit system.stat
scoreboard players operation global.gun_shot system.stat += gun_shot system.stat
scoreboard players operation global.gun_headshot system.stat += gun_headshot system.stat

$execute store result score win system.stat run data get storage stat root.player.$(type).$(name).win
scoreboard players operation global.win system.stat += win system.stat

$execute store result score total_round system.stat run data get storage stat root.player.$(type).$(name).total_round
scoreboard players operation global.total_round system.stat += total_round system.stat

$execute store result score best_round system.stat run data get storage stat root.player.$(type).$(name).best_round
scoreboard players operation global.best_round system.stat > best_round system.stat

$execute store result score window_repaired system.stat run data get storage stat root.player.$(type).$(name).window_repaired
scoreboard players operation global.window_repaired system.stat += window_repaired system.stat


