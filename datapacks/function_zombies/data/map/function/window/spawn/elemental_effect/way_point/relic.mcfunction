
kill @e[type=skeleton,tag=window_point,tag=relic]
summon skeleton 126 37 114 {Tags:["window_point","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 117 37 99 {Tags:["window_point","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 137 40 95 {Tags:["window_point","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#team join game.player @e[type=skeleton,tag=window_point]
execute as @e[type=skeleton,tag=window_point] run attribute @s burning_time base set 0