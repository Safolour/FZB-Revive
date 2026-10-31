
kill @e[type=skeleton,tag=window_point,tag=cave]
summon skeleton 29 25 102 {Tags:["window_point","cave"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 22 25 111 {Tags:["window_point","cave"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 39 25 122 {Tags:["window_point","cave"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 35 25 127 {Tags:["window_point","cave"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#team join game.player @e[type=skeleton,tag=window_point]
execute as @e[type=skeleton,tag=window_point] run attribute @s burning_time base set 0