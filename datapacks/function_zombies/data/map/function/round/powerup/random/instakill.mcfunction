
data modify storage round powerup.instakill set value []
execute store result score random round run random value 1..2
execute if score random round matches 1 run data modify storage round powerup.instakill set value [\
 {round:2,wave:1},{round:5,wave:1},{round:8,wave:1},{round:11,wave:1},{round:14,wave:1},{round:17,wave:1},{round:20,wave:1},{round:23,wave:1}]
execute if score random round matches 2 run data modify storage round powerup.instakill set value [\
 {round:3,wave:1},{round:6,wave:1},{round:9,wave:1},{round:12,wave:1},{round:15,wave:1},{round:18,wave:1},{round:21,wave:1}]