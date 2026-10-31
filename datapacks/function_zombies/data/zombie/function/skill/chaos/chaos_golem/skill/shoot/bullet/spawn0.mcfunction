
tag @r[scores={stat.player=1},gamemode=!spectator] add target
data merge entity @s {transformation:{translation:[-0.0,0.0,-0.0],scale:[1.5,1.0,1.5],left_rotation:{angle:1.57,axis:[1.0,0.0,0.0]}}}
execute store result score x zombie.chaos.chaos_golem.bullet_position run data get entity @p[tag=target] Pos[0] 1
execute store result score y zombie.chaos.chaos_golem.bullet_position run data get entity @p[tag=target] Pos[1] 1
execute store result score z zombie.chaos.chaos_golem.bullet_position run data get entity @p[tag=target] Pos[2] 1
execute store result score random zombie.chaos.chaos_golem.bullet_position run random value -1..1
execute if entity @p[tag=target,distance=8..] store result score random zombie.chaos.chaos_golem.bullet_position run random value -2..2
scoreboard players operation x zombie.chaos.chaos_golem.bullet_position += random zombie.chaos.chaos_golem.bullet_position
execute store result score random zombie.chaos.chaos_golem.bullet_position run random value 0..2
execute if entity @p[tag=target,distance=8..] store result score random zombie.chaos.chaos_golem.bullet_position run random value -1..3
scoreboard players operation y zombie.chaos.chaos_golem.bullet_position += random zombie.chaos.chaos_golem.bullet_position
execute store result score random zombie.chaos.chaos_golem.bullet_position run random value -1..1
execute if entity @p[tag=target,distance=8..] store result score random zombie.chaos.chaos_golem.bullet_position run random value -2..2
scoreboard players operation z zombie.chaos.chaos_golem.bullet_position += random zombie.chaos.chaos_golem.bullet_position
execute store result entity @s data.position.x int 1 run scoreboard players get x zombie.chaos.chaos_golem.bullet_position
execute store result entity @s data.position.y int 1 run scoreboard players get y zombie.chaos.chaos_golem.bullet_position
execute store result entity @s data.position.z int 1 run scoreboard players get z zombie.chaos.chaos_golem.bullet_position
tag @a[tag=target] remove target