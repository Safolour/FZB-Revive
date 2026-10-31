particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^-2 ^ ^ 0 0 0 10000 1 force @a[scores={particle=0..}]
particle dust{color: [1.0, 0.0, 0.0], scale:1 } ^2 ^ ^ 0 0 0 10000 1 force @a[scores={particle=0..}]

scoreboard players add count zombie.number 1

execute if score count zombie.number matches ..50 positioned ^ ^ ^0.5 run function zombie:skill/machine/lamda/skill/hit_ground/line/loop
