
execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer0 matches -1 run return fail
execute if score @s zombie.nether.ashes.ashwizard.missile.skill_timer0 matches 10.. run return run function zombie:skill/nether/ashes/ash_wizard/missile/get_position0
tag @p[scores={stat.player=1}] add chosen
scoreboard players add @s zombie.nether.ashes.ashwizard.missile.skill_timer0 1
scoreboard players operation time zombie.nether.ashes.ashwizard.missile.skill_timer0 = @s zombie.nether.ashes.ashwizard.missile.skill_timer0
scoreboard players operation time zombie.nether.ashes.ashwizard.missile.skill_timer0 %= 2 number
execute if score time zombie.nether.ashes.ashwizard.missile.skill_timer0 matches 0 facing entity @p[tag=chosen] eyes positioned ^2 ^ ^4 run summon marker ~ ~ ~ {Tags:["position","chosen"]}
execute if score time zombie.nether.ashes.ashwizard.missile.skill_timer0 matches 1 facing entity @p[tag=chosen] eyes positioned ^-2 ^ ^4 run summon marker ~ ~ ~ {Tags:["position","chosen"]}

execute store result score x zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @n[type=marker,tag=position,tag=chosen] Pos[0] 1
execute store result score y zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @n[type=marker,tag=position,tag=chosen] Pos[1] 1
execute store result score z zombie.nether.ashes.ashwizard.missile.skill_position run data get entity @n[type=marker,tag=position,tag=chosen] Pos[2] 1

execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value -1..1
scoreboard players operation x zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position
execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value 0..2
scoreboard players operation y zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position
execute store result score random zombie.nether.ashes.ashwizard.missile.skill_position run random value -1..1
scoreboard players operation z zombie.nether.ashes.ashwizard.missile.skill_position += random zombie.nether.ashes.ashwizard.missile.skill_position

execute store result entity @s data.position.x int 1 run scoreboard players get x zombie.nether.ashes.ashwizard.missile.skill_position
execute store result entity @s data.position.y int 1 run scoreboard players get y zombie.nether.ashes.ashwizard.missile.skill_position
execute store result entity @s data.position.z int 1 run scoreboard players get z zombie.nether.ashes.ashwizard.missile.skill_position
tag @p[tag=chosen] remove chosen
kill @n[type=marker,tag=position,tag=chosen]