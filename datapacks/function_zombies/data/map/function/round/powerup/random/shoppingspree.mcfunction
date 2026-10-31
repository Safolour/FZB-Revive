
data modify storage round powerup.shoppingspree set value []
execute store result score random round run random value 1..3
execute if score random round matches 1 run data modify storage round powerup.shoppingspree set value [\
 {round:5,wave:1},{round:15,wave:1},{round:25,wave:1},{round:35,wave:1},{round:45,wave:1},{round:55,wave:1},{round:65,wave:1},{round:75,wave:1},{round:85,wave:1},{round:95,wave:1}]
execute if score random round matches 2 run data modify storage round powerup.shoppingspree set value [\
 {round:6,wave:1},{round:16,wave:1},{round:26,wave:1},{round:36,wave:1},{round:46,wave:1},{round:56,wave:1},{round:66,wave:1},{round:76,wave:1},{round:86,wave:1},{round:96,wave:1}]
execute if score random round matches 3 run data modify storage round powerup.shoppingspree set value [\
 {round:7,wave:1},{round:17,wave:1},{round:27,wave:1},{round:37,wave:1},{round:47,wave:1},{round:57,wave:1},{round:67,wave:1},{round:77,wave:1},{round:87,wave:1},{round:97,wave:1}]
