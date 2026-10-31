
scoreboard objectives remove round
scoreboard objectives remove round.timer
scoreboard objectives remove round.spawn



data remove storage round root
data remove storage round mob_spawn_list
data remove storage round powerup

function map:music/lava_sea/stop

schedule clear map:round/trigger/open/0_0
schedule clear map:round/trigger/open/0_1
schedule clear map:round/trigger/open/0_2
schedule clear map:round/trigger/open/1_0
schedule clear map:round/trigger/open/1_1
schedule clear map:round/trigger/open/1_2
schedule clear map:round/trigger/open/2_0
schedule clear map:round/trigger/open/2_1
schedule clear map:round/trigger/open/2_2
schedule clear map:round/trigger/open/3_0
schedule clear map:round/trigger/open/3_1
schedule clear map:round/trigger/open/3_2
schedule clear map:round/trigger/open/4_0
schedule clear map:round/trigger/open/4_1
schedule clear map:round/trigger/open/4_2

schedule clear map:round/trigger/giant/0_0
schedule clear map:round/trigger/giant/0_1
schedule clear map:round/trigger/giant/0_2
schedule clear map:round/trigger/giant/0_3
schedule clear map:round/trigger/giant/1_0
schedule clear map:round/trigger/giant/1_1
schedule clear map:round/trigger/giant/1_2
