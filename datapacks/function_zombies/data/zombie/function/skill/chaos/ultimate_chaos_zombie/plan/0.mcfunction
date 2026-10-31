tag @s add skill.ultimatechaoszombie.casting

execute store result score random zombie.number run random value 0..2

execute if score random zombie.number matches 0 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/init
execute if score random zombie.number matches 1 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/init

execute if score random zombie.number matches 2 run function zombie:skill/chaos/ultimate_chaos_zombie/plan/attack_electric
execute if score random zombie.number matches 2 if entity @s[tag=skill.ultimatechaoszombie.attack_electric.cast_stort] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/init
execute if score random zombie.number matches 2 unless entity @s[tag=skill.ultimatechaoszombie.attack_electric.cast_stort] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/init1
tag @s remove skill.ultimatechaoszombie.attack_electric.cast_stort

scoreboard players reset random zombie.number
