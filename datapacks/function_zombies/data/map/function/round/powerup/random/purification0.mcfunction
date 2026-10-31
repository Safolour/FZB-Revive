
data modify storage round powerup.purification set value []
execute store result score random round run random value 1..3
execute if score random round matches 1 run data modify storage round powerup.purification set value [\
 {round:21,wave:1},{round:24,wave:1},{round:27,wave:1},{round:33,wave:1},{round:36,wave:1},{round:39,wave:1},{round:30,wave:1}]
execute if score random round matches 2 run data modify storage round powerup.purification set value [\
 {round:22,wave:1},{round:25,wave:1},{round:28,wave:1},{round:34,wave:1},{round:37,wave:1},{round:40,wave:1},{round:30,wave:1}]
execute if score random round matches 3 run data modify storage round powerup.purification set value [\
 {round:23,wave:1},{round:26,wave:1},{round:29,wave:1},{round:35,wave:1},{round:39,wave:1},{round:30,wave:1}]