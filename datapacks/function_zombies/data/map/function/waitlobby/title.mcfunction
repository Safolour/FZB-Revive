
title @s reset
title @s times 20 100 20
title @s title [{translate:"zb.waitlobby.title.1"}]


execute store result score random waitlobby.stat run random value 1..4
execute if score random waitlobby.stat matches 1 run title @s subtitle [{translate:"zb.waitlobby.subtitle.1"}]
execute if score random waitlobby.stat matches 2 run title @s subtitle [{translate:"zb.waitlobby.subtitle.2"}]
execute if score random waitlobby.stat matches 3 run title @s subtitle [{translate:"zb.waitlobby.subtitle.3"}]
execute if score random waitlobby.stat matches 4 run title @s subtitle [{translate:"zb.waitlobby.subtitle.4"}]

scoreboard players reset random waitlobby.stat
