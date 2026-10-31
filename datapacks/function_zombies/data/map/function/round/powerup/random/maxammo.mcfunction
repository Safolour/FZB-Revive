
data modify storage round powerup.maxammo set value []
execute store result score random round run random value 1..3
execute if score random round matches 1 run data modify storage round powerup.maxammo set value [\
 {round:2,wave:1},{round:5,wave:1},{round:8,wave:1},{round:12,wave:1},{round:16,wave:1},{round:21,wave:1},{round:26,wave:1},{round:31,wave:1},{round:36,wave:1},{round:41,wave:1},{round:46,wave:1},{round:51,wave:1},{round:56,wave:1},{round:61,wave:1},{round:66,wave:1},{round:71,wave:1},{round:76,wave:1},{round:81,wave:1},{round:86,wave:1},{round:91,wave:1},{round:96,wave:1}]
 execute if score random round matches 2 run data modify storage round powerup.maxammo set value [\
 {round:3,wave:1},{round:6,wave:1},{round:9,wave:1},{round:13,wave:1},{round:17,wave:1},{round:22,wave:1},{round:27,wave:1},{round:32,wave:1},{round:37,wave:1},{round:42,wave:1},{round:47,wave:1},{round:52,wave:1},{round:57,wave:1},{round:62,wave:1},{round:67,wave:1},{round:72,wave:1},{round:77,wave:1},{round:82,wave:1},{round:87,wave:1},{round:92,wave:1},{round:97,wave:1}]
 execute if score random round matches 3 run data modify storage round powerup.maxammo set value [\
 {round:4,wave:1},{round:7,wave:1},{round:10,wave:1},{round:14,wave:1},{round:18,wave:1},{round:24,wave:1},{round:28,wave:1},{round:34,wave:1},{round:38,wave:1},{round:44,wave:1},{round:48,wave:1},{round:54,wave:1},{round:58,wave:1},{round:64,wave:1},{round:68,wave:1},{round:74,wave:1},{round:78,wave:1},{round:84,wave:1},{round:88,wave:1},{round:94,wave:1},{round:98,wave:1}]