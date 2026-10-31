
execute as @e[type=skeleton,tag=way_point] run function system:death
#矿洞
 summon skeleton 38 25 113 {data:{way_point:0},Tags:["way_point.0","way_point","way_point_target","cave"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#废墟
 summon skeleton 48 25 113 {data:{way_point:1},Tags:["way_point.1","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 53 25 120 {data:{way_point:2},Tags:["way_point.2","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 64 34 118 {data:{way_point:3},Tags:["way_point.3","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 64 26 104 {data:{way_point:4},Tags:["way_point.4","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 66 25 122 {data:{way_point:5},Tags:["way_point.5","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 68 32 131 {data:{way_point:44},Tags:["way_point.44","way_point","way_point_target","ruins"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#溶洞
 summon skeleton 83 27 125 {data:{way_point:6},Tags:["way_point.6","way_point","way_point_target","karst"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 97 32 135 {data:{way_point:7},Tags:["way_point.7","way_point","way_point_target","karst"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 110 34 132 {data:{way_point:8},Tags:["way_point.8","way_point","way_point_target","karst"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 116 37 115 {data:{way_point:9},Tags:["way_point.9","way_point","way_point_target","karst"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#遗迹
 summon skeleton 122 37 109 {data:{way_point:10},Tags:["way_point.10","way_point","way_point_target","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 128 38 98 {data:{way_point:11},Tags:["way_point.11","way_point","way_point_target","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 127 42 89 {data:{way_point:12},Tags:["way_point.12","way_point","way_point_target","relic"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#发电站
 summon skeleton 125 43 81 {data:{way_point:13},Tags:["way_point.13","way_point","way_point_target","powerstation"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 110 43 67 {data:{way_point:14},Tags:["way_point.14","way_point","way_point_target","powerstation"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 129 43 67 {data:{way_point:15},Tags:["way_point.15","way_point","way_point_target","powerstation"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#锻造厂
 summon skeleton 64 31 78 {data:{way_point:16},Tags:["way_point.16","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 70 33 58 {data:{way_point:17},Tags:["way_point.17","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 86 36 47 {data:{way_point:18},Tags:["way_point.18","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 98 38 55 {data:{way_point:19},Tags:["way_point.19","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 100 39 67 {data:{way_point:20},Tags:["way_point.20","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 102 39 82 {data:{way_point:21},Tags:["way_point.21","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 88 42 72 {data:{way_point:22},Tags:["way_point.22","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 84 42 83 {data:{way_point:23},Tags:["way_point.23","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 75 45 84 {data:{way_point:24},Tags:["way_point.24","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 71 45 69 {data:{way_point:25},Tags:["way_point.25","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 84 35 65 {data:{way_point:26},Tags:["way_point.26","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 83 31 76 {data:{way_point:27},Tags:["way_point.27","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 summon skeleton 64 31 65 {data:{way_point:43},Tags:["way_point.43","way_point","way_point_target","forge"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#实验室
 #蓝
  summon skeleton 137 43 67 {data:{way_point:28},Tags:["way_point.28","way_point","way_point_target","laboratory","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 146 45 76 {data:{way_point:29},Tags:["way_point.29","way_point","way_point_target","laboratory","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 153 45 82 {data:{way_point:30},Tags:["way_point.30","way_point","way_point_target","laboratory","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #绿
  summon skeleton 161 45 81 {data:{way_point:31},Tags:["way_point.31","way_point","way_point_target","laboratory","laboratory_green"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 175 45 83 {data:{way_point:32},Tags:["way_point.32","way_point","way_point_target","laboratory","laboratory_green"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #光
  summon skeleton 205 45 83 {data:{way_point:33},Tags:["way_point.33","way_point","way_point_target","laboratory","laboratory_light"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 215 40 93 {data:{way_point:34},Tags:["way_point.34","way_point","way_point_target","laboratory","laboratory_light"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #黄
  summon skeleton 138 40 55 {data:{way_point:35},Tags:["way_point.35","way_point","way_point_target","laboratory","laboratory_yellow"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #灰
  summon skeleton 151 45 56 {data:{way_point:36},Tags:["way_point.36","way_point","way_point_target","laboratory","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 161 45 68 {data:{way_point:37},Tags:["way_point.37","way_point","way_point_target","laboratory","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 173 45 62 {data:{way_point:38},Tags:["way_point.38","way_point","way_point_target","laboratory","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #暗
  summon skeleton 205 46 61 {data:{way_point:39},Tags:["way_point.39","way_point","way_point_target","laboratory","laboratory_shadow"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 215 52 53 {data:{way_point:40},Tags:["way_point.40","way_point","way_point_target","laboratory","laboratory_shadow"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
 #桥
  summon skeleton 192 44 61 {data:{way_point:41},Tags:["way_point.41","way_point","way_point_target","laboratory","laboratory_portal"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
  summon skeleton 191 45 83 {data:{way_point:42},Tags:["way_point.42","way_point","way_point_target","laboratory","laboratory_portal"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}

#
execute as @e[type=skeleton,tag=way_point] run function map:path/way_point/summon/elemental_effect/1 with entity @s data

scoreboard objectives add path.way_point dummy
scoreboard objectives add path.way_point.0.near dummy
scoreboard objectives add path.way_point.1.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.2] path.way_point.1.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.4] path.way_point.1.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.5] path.way_point.1.near 1
scoreboard objectives add path.way_point.2.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.1] path.way_point.2.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.44] path.way_point.2.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.4] path.way_point.2.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.5] path.way_point.2.near 1
scoreboard objectives add path.way_point.3.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.44] path.way_point.3.near 1
scoreboard objectives add path.way_point.4.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.1] path.way_point.4.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.2] path.way_point.4.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.5] path.way_point.4.near 1
scoreboard objectives add path.way_point.5.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.1] path.way_point.5.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.2] path.way_point.5.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.4] path.way_point.5.near 1
scoreboard objectives add path.way_point.6.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.7] path.way_point.6.near 1
scoreboard objectives add path.way_point.7.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.6] path.way_point.7.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.8] path.way_point.7.near 1
scoreboard objectives add path.way_point.8.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.7] path.way_point.8.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.9] path.way_point.8.near 1
scoreboard objectives add path.way_point.9.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.8] path.way_point.9.near 1
scoreboard objectives add path.way_point.10.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.11] path.way_point.10.near 1
scoreboard objectives add path.way_point.11.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.10] path.way_point.11.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.12] path.way_point.11.near 1
scoreboard objectives add path.way_point.12.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.11] path.way_point.12.near 1
scoreboard objectives add path.way_point.13.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.14] path.way_point.13.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.15] path.way_point.13.near 1
scoreboard objectives add path.way_point.14.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.13] path.way_point.14.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.15] path.way_point.14.near 1
scoreboard objectives add path.way_point.15.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.13] path.way_point.15.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.14] path.way_point.15.near 1
scoreboard objectives add path.way_point.16.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.27] path.way_point.16.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.43] path.way_point.16.near 1
scoreboard objectives add path.way_point.17.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.18] path.way_point.17.near 1
scoreboard objectives add path.way_point.18.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.17] path.way_point.18.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.19] path.way_point.18.near 1
scoreboard objectives add path.way_point.19.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.18] path.way_point.19.near 1
scoreboard objectives add path.way_point.20.near dummy
scoreboard objectives add path.way_point.21.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.22] path.way_point.21.near 1
scoreboard objectives add path.way_point.22.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.21] path.way_point.22.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.23] path.way_point.22.near 1
scoreboard objectives add path.way_point.23.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.22] path.way_point.23.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.24] path.way_point.23.near 1
scoreboard objectives add path.way_point.24.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.23] path.way_point.24.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.25] path.way_point.24.near 1
scoreboard objectives add path.way_point.25.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.24] path.way_point.25.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.26] path.way_point.25.near 1
scoreboard objectives add path.way_point.26.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.25] path.way_point.26.near 1
scoreboard objectives add path.way_point.27.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.16] path.way_point.27.near 1
scoreboard objectives add path.way_point.28.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.29] path.way_point.28.near 1
scoreboard objectives add path.way_point.29.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.28] path.way_point.29.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.30] path.way_point.29.near 1
scoreboard objectives add path.way_point.30.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.29] path.way_point.30.near 1
scoreboard objectives add path.way_point.31.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.32] path.way_point.31.near 1
scoreboard objectives add path.way_point.32.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.31] path.way_point.32.near 1
scoreboard objectives add path.way_point.33.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.34] path.way_point.33.near 1
scoreboard objectives add path.way_point.34.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.33] path.way_point.34.near 1
scoreboard objectives add path.way_point.35.near dummy
scoreboard objectives add path.way_point.36.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.37] path.way_point.36.near 1
scoreboard objectives add path.way_point.37.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.36] path.way_point.37.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.38] path.way_point.37.near 1
scoreboard objectives add path.way_point.38.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.37] path.way_point.38.near 1
scoreboard objectives add path.way_point.39.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.40] path.way_point.39.near 1
scoreboard objectives add path.way_point.40.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.39] path.way_point.40.near 1
scoreboard objectives add path.way_point.41.near dummy
scoreboard objectives add path.way_point.42.near dummy
scoreboard objectives add path.way_point.43.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.16] path.way_point.43.near 1
scoreboard objectives add path.way_point.44.near dummy
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.2] path.way_point.44.near 1
 scoreboard players set @n[type=skeleton,tag=way_point,tag=way_point.3] path.way_point.44.near 1