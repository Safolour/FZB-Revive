

scoreboard players set global.times_knock_down system.stat 0
scoreboard players set global.death system.stat 0
scoreboard players set global.zombie_kill system.stat 0
scoreboard players set global.player_revived system.stat 0
scoreboard players set global.door_open system.stat 0
scoreboard players set global.accuracy system.stat 0
scoreboard players set global.accuracy system.stat 0
scoreboard players set global.win system.stat 0
scoreboard players set global.total_round system.stat 0
scoreboard players set global.best_round system.stat 0
scoreboard players set global.window_repaired system.stat 0

scoreboard players set global.gun_hit system.stat 0
scoreboard players set global.gun_shot system.stat 0
scoreboard players set global.gun_headshot system.stat 0

$function system:game_stat/get/4_0 {type:3,name:$(name)}
$function system:game_stat/get/4_0 {type:4,name:$(name)}


scoreboard players set accuracy system.stat 0
execute if score global.gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat = global.gun_hit system.stat
execute if score global.gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat *= 100 number
execute if score global.gun_shot system.stat matches 1.. run scoreboard players operation accuracy system.stat /= global.gun_shot system.stat
scoreboard players operation gun_accuracy system.stat = accuracy system.stat

scoreboard players set accuracy system.stat 0
execute if score global.gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat = global.gun_headshot system.stat
execute if score global.gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat *= 100 number
execute if score global.gun_hit system.stat matches 1.. run scoreboard players operation accuracy system.stat /= global.gun_hit system.stat
scoreboard players operation gun_headshot_accuracy system.stat = accuracy system.stat


$execute store result storage stat root.player.global.$(name).times_knock_down int 1 run scoreboard players get global.times_knock_down system.stat
$execute store result storage stat root.player.global.$(name).death int 1 run scoreboard players get global.death system.stat
$execute store result storage stat root.player.global.$(name).zombie_kill int 1 run scoreboard players get global.zombie_kill system.stat
$execute store result storage stat root.player.global.$(name).player_revived int 1 run scoreboard players get global.player_revived system.stat
$execute store result storage stat root.player.global.$(name).door_open int 1 run scoreboard players get global.door_open system.stat
$execute store result storage stat root.player.global.$(name).accuracy int 1 run scoreboard players get gun_accuracy system.stat
$execute store result storage stat root.player.global.$(name).gun_headshot_accuracy int 1 run scoreboard players get gun_headshot_accuracy system.stat
$execute store result storage stat root.player.global.$(name).win int 1 run scoreboard players get global.win system.stat
$execute store result storage stat root.player.global.$(name).total_round int 1 run scoreboard players get global.total_round system.stat
$execute store result storage stat root.player.global.$(name).best_round int 1 run scoreboard players get global.best_round system.stat
$execute store result storage stat root.player.global.$(name).window_repaired int 1 run scoreboard players get global.window_repaired system.stat