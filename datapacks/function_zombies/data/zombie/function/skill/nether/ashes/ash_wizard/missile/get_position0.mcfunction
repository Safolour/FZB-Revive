
tag @p[scores={stat.player=1}] add chosen
scoreboard players set @s zombie.nether.ashes.ashwizard.missile.skill_timer0 -1
execute store result score x zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @p[tag=chosen] Pos[0] 1
execute store result score y zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @p[tag=chosen] Pos[1] 1
execute store result score z zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @p[tag=chosen] Pos[2] 1

execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value -2..2
scoreboard players operation x zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position
execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value -1..2
scoreboard players operation y zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position
execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value -2..2
scoreboard players operation z zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position

execute store result entity @s data.position.x int 1 run scoreboard players get x zombie.nether.ashes.ashwizard.missile.skill_position
execute store result entity @s data.position.y int 1 run scoreboard players get y zombie.nether.ashes.ashwizard.missile.skill_position
execute store result entity @s data.position.z int 1 run scoreboard players get z zombie.nether.ashes.ashwizard.missile.skill_position
tag @p[tag=chosen] remove chosen