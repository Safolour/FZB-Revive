tag @s add skill.ultimatechaoszombie.casting

execute store result score random zombie.number run random value 0..6

execute if score random zombie.number matches 0..1 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/init

execute if score random zombie.number matches 2..3 run function zombie:skill/chaos/ultimate_chaos_zombie/plan/attack_electric
execute if score random zombie.number matches 2..3 if entity @s[tag=skill.ultimatechaoszombie.attack_electric.cast_stort] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/init
execute if score random zombie.number matches 2..3 unless entity @s[tag=skill.ultimatechaoszombie.attack_electric.cast_stort] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/init1
tag @s remove skill.ultimatechaoszombie.attack_electric.cast_stort


execute if score random zombie.number matches 6 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/init

execute if score random zombie.number matches 4..5 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/init

scoreboard players reset random zombie.number
