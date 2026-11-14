# User-supplied block selections, XZ only. Room 0 also covers an overlap without route history.
scoreboard players set @s fl.room 0
scoreboard players set @s fl.room_order 0
execute store result score #p5roomx fl.val run data get entity @s Pos[0] 1
execute store result score #p5roomz fl.val run data get entity @s Pos[2] 1
# Transfer room 1: inclusive block coordinates (291, 180) through (309, 203).
execute if score #p5roomx fl.val matches 291..309 if score #p5roomz fl.val matches 180..203 run scoreboard players set @s fl.room 1
execute if score @s fl.room matches 1 run scoreboard players set @s fl.room_order 1
# First-level rooms after transfer 1. Each branch has its own ID and occupancy.
execute if score #p5roomx fl.val matches 310..359 if score #p5roomz fl.val matches 185..199 run scoreboard players set @s fl.room 21
execute if score #p5roomx fl.val matches 293..307 if score #p5roomz fl.val matches 204..256 run scoreboard players set @s fl.room 22
execute if score @s fl.room matches 21..22 run scoreboard players set @s fl.room_order 2
# Second-level rooms after transfer 1, again independent of the first-level rooms.
execute if score #p5roomx fl.val matches 332..361 if score #p5roomz fl.val matches 200..226 run scoreboard players set @s fl.room 31
execute if score #p5roomx fl.val matches 308..328 if score #p5roomz fl.val matches 227..258 run scoreboard players set @s fl.room 32
execute if score @s fl.room matches 31..32 run scoreboard players set @s fl.room_order 3
# Transfer room 2 stays independent from both incoming rooms and outgoing branches.
execute if score #p5roomx fl.val matches 329..348 if score #p5roomz fl.val matches 227..245 run scoreboard players set @s fl.room 4
execute if score @s fl.room matches 4 run scoreboard players set @s fl.room_order 4
# First-level rooms after transfer 2. The user assigns their overlap to southern room 52.
execute if score #p5roomx fl.val matches 331..352 if score #p5roomz fl.val matches 247..277 run scoreboard players set @s fl.room 52
execute unless score @s fl.room matches 52 if score #p5roomx fl.val matches 349..366 if score #p5roomz fl.val matches 230..256 run scoreboard players set @s fl.room 51
execute if score @s fl.room matches 51..52 run scoreboard players set @s fl.room_order 5
# Remember this entity's own first-level choice after transfer 2, never a global door choice.
execute if score @s fl.room_order matches 1..4 run tag @s remove firelord.p5.route2.east
execute if score @s fl.room_order matches 1..4 run tag @s remove firelord.p5.route2.south
execute if score @s fl.room matches 51 run tag @s add firelord.p5.route2.east
execute if score @s fl.room matches 51 run tag @s remove firelord.p5.route2.south
execute if score @s fl.room matches 52 run tag @s add firelord.p5.route2.south
execute if score @s fl.room matches 52 run tag @s remove firelord.p5.route2.east
# Second-level east: (367,245)..(391,302); south: (338,278)..(391,300).
# The non-overlapping parts need only coordinates; the shared part needs the remembered route.
execute if score #p5roomx fl.val matches 367..391 if score #p5roomz fl.val matches 245..302 unless score #p5roomz fl.val matches 278..300 run scoreboard players set @s fl.room 61
execute if score #p5roomx fl.val matches 338..391 if score #p5roomz fl.val matches 278..300 unless score #p5roomx fl.val matches 367..391 run scoreboard players set @s fl.room 62
execute if score #p5roomx fl.val matches 367..391 if score #p5roomz fl.val matches 278..300 if entity @s[tag=firelord.p5.route2.east,tag=!firelord.p5.route2.south] run scoreboard players set @s fl.room 61
execute if score #p5roomx fl.val matches 367..391 if score #p5roomz fl.val matches 278..300 if entity @s[tag=firelord.p5.route2.south,tag=!firelord.p5.route2.east] run scoreboard players set @s fl.room 62
execute if score @s fl.room matches 61..62 run scoreboard players set @s fl.room_order 6
