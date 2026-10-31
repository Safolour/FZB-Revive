
scoreboard players add @s zombie.electric.aircraft.shoot.skill_timer0 2
tag @r[scores={stat.player=1},gamemode=adventure] add chosen
execute store result score x zombie.electric.aircraft.shoot.position run data get entity @p[tag=chosen] Pos[0] 1
execute store result score y zombie.electric.aircraft.shoot.position run data get entity @p[tag=chosen] Pos[1] 1
execute store result score z zombie.electric.aircraft.shoot.position run data get entity @p[tag=chosen] Pos[2] 1
tag @p[tag=chosen] remove chosen
execute store result score random zombie.electric.aircraft.shoot.position run random value -1..1
scoreboard players operation x zombie.electric.aircraft.shoot.position += random zombie.electric.aircraft.shoot.position
execute store result score random zombie.electric.aircraft.shoot.position run random value 0..2
scoreboard players operation y zombie.electric.aircraft.shoot.position += random zombie.electric.aircraft.shoot.position
execute store result score random zombie.electric.aircraft.shoot.position run random value -1..1
scoreboard players operation z zombie.electric.aircraft.shoot.position += random zombie.electric.aircraft.shoot.position
execute store result entity @s data.position.x int 1 run scoreboard players get x zombie.electric.aircraft.shoot.position
execute store result entity @s data.position.y int 1 run scoreboard players get y zombie.electric.aircraft.shoot.position
execute store result entity @s data.position.z int 1 run scoreboard players get z zombie.electric.aircraft.shoot.position