summon marker ~ ~ ~ {Tags:["firelord.meteor.trace"]}
scoreboard players add @s zombie.skill.damage 1
execute if score @s zombie.skill.damage matches 9.. run scoreboard players set @s zombie.skill.damage 1
execute if score @s zombie.skill.damage matches 1 run data modify entity @s transformation.left_rotation set value [0.000000f,0f,0.000000f,1.000000f]
execute if score @s zombie.skill.damage matches 2 run data modify entity @s transformation.left_rotation set value [0.270598f,0f,0.270598f,0.923880f]
execute if score @s zombie.skill.damage matches 3 run data modify entity @s transformation.left_rotation set value [0.500000f,0f,0.500000f,0.707107f]
execute if score @s zombie.skill.damage matches 4 run data modify entity @s transformation.left_rotation set value [0.653281f,0f,0.653281f,0.382683f]
execute if score @s zombie.skill.damage matches 5 run data modify entity @s transformation.left_rotation set value [0.707107f,0f,0.707107f,0.000000f]
execute if score @s zombie.skill.damage matches 6 run data modify entity @s transformation.left_rotation set value [0.653281f,0f,0.653281f,-0.382683f]
execute if score @s zombie.skill.damage matches 7 run data modify entity @s transformation.left_rotation set value [0.500000f,0f,0.500000f,-0.707107f]
execute if score @s zombie.skill.damage matches 8 run data modify entity @s transformation.left_rotation set value [0.270598f,0f,0.270598f,-0.923880f]
scoreboard players add @s zombie.skill_timer 1
particle small_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle small_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.03 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0 0 0 0.03 1 force @a[scores={particle=1}]
particle dust_color_transition{from_color:[0.94,0.06,0.0],to_color:[1.0,0.86,0.42],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.94,0.06,0.0],to_color:[1.0,0.86,0.42],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if entity @s[tag=firelord.p2.meteor.path0] run tp @s ~-0.19286 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path1] run tp @s ~-0.19286 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path2] run tp @s ~-0.19286 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path3] run tp @s ~-0.19286 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path4] run tp @s ~-0.19286 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path5] run tp @s ~-0.19286 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path6] run tp @s ~-0.19286 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path7] run tp @s ~-0.19286 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path8] run tp @s ~-0.19286 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path9] run tp @s ~-0.19286 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path10] run tp @s ~-0.19286 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path11] run tp @s ~-0.12857 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path12] run tp @s ~-0.12857 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path13] run tp @s ~-0.12857 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path14] run tp @s ~-0.12857 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path15] run tp @s ~-0.12857 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path16] run tp @s ~-0.12857 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path17] run tp @s ~-0.12857 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path18] run tp @s ~-0.12857 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path19] run tp @s ~-0.12857 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path20] run tp @s ~-0.12857 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path21] run tp @s ~-0.12857 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path22] run tp @s ~-0.12857 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path23] run tp @s ~-0.06429 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path24] run tp @s ~-0.06429 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path25] run tp @s ~-0.06429 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path26] run tp @s ~-0.06429 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path27] run tp @s ~-0.06429 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path28] run tp @s ~-0.06429 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path29] run tp @s ~-0.06429 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path30] run tp @s ~-0.06429 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path31] run tp @s ~-0.06429 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path32] run tp @s ~-0.06429 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path33] run tp @s ~-0.06429 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path34] run tp @s ~-0.06429 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path35] run tp @s ~0.00000 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path36] run tp @s ~0.00000 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path37] run tp @s ~0.00000 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path38] run tp @s ~0.00000 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path39] run tp @s ~0.00000 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path40] run tp @s ~0.00000 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path41] run tp @s ~0.00000 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path42] run tp @s ~0.00000 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path43] run tp @s ~0.00000 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path44] run tp @s ~0.00000 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path45] run tp @s ~0.00000 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path46] run tp @s ~0.00000 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path47] run tp @s ~0.06429 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path48] run tp @s ~0.06429 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path49] run tp @s ~0.06429 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path50] run tp @s ~0.06429 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path51] run tp @s ~0.06429 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path52] run tp @s ~0.06429 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path53] run tp @s ~0.06429 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path54] run tp @s ~0.06429 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path55] run tp @s ~0.06429 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path56] run tp @s ~0.06429 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path57] run tp @s ~0.06429 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path58] run tp @s ~0.12857 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path59] run tp @s ~0.12857 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path60] run tp @s ~0.12857 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path61] run tp @s ~0.12857 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path62] run tp @s ~0.12857 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path63] run tp @s ~0.12857 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path64] run tp @s ~0.12857 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path65] run tp @s ~0.12857 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path66] run tp @s ~0.12857 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path67] run tp @s ~0.12857 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path68] run tp @s ~0.12857 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path69] run tp @s ~0.12857 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path70] run tp @s ~0.19286 ~-1.081 ~0.02143
execute if entity @s[tag=firelord.p2.meteor.path71] run tp @s ~0.19286 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path72] run tp @s ~0.19286 ~-1.081 ~0.15000
execute if entity @s[tag=firelord.p2.meteor.path73] run tp @s ~0.19286 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path74] run tp @s ~0.19286 ~-1.081 ~0.27857
execute if entity @s[tag=firelord.p2.meteor.path75] run tp @s ~0.19286 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path76] run tp @s ~0.19286 ~-1.081 ~0.40714
execute if entity @s[tag=firelord.p2.meteor.path77] run tp @s ~0.19286 ~-1.081 ~0.47143
execute if entity @s[tag=firelord.p2.meteor.path78] run tp @s ~0.19286 ~-1.081 ~0.53571
execute if entity @s[tag=firelord.p2.meteor.path79] run tp @s ~0.19286 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path80] run tp @s ~0.19286 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path81] run tp @s ~0.19286 ~-1.081 ~0.72857
execute if entity @s[tag=firelord.p2.meteor.path82] run tp @s ~0.19286 ~-1.081 ~0.79286
execute if entity @s[tag=firelord.p2.meteor.path83] run tp @s ~-0.19286 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path84] run tp @s ~-0.19286 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path85] run tp @s ~-0.12857 ~-1.081 ~0.08571
execute if entity @s[tag=firelord.p2.meteor.path86] run tp @s ~-0.06429 ~-1.081 ~0.60000
execute if entity @s[tag=firelord.p2.meteor.path87] run tp @s ~0.00000 ~-1.081 ~0.34286
execute if entity @s[tag=firelord.p2.meteor.path88] run tp @s ~0.06429 ~-1.081 ~0.21429
execute if entity @s[tag=firelord.p2.meteor.path89] run tp @s ~0.06429 ~-1.081 ~0.66429
execute if entity @s[tag=firelord.p2.meteor.path90] run tp @s ~0.12857 ~-1.081 ~0.02143
execute at @e[type=marker,tag=firelord.meteor.trace,sort=nearest,limit=1] run function zombie:skill/nether/firelord/p2/meteor/shield_trace
kill @e[type=marker,tag=firelord.meteor.trace,sort=nearest,limit=1,distance=..3]
execute if score @s zombie.skill_timer matches 14.. run kill @s
