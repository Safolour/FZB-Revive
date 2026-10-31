scoreboard players add @s zombie.chaos.chaos_golem.skill_timer 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 20 rotated ~ 0 run particle sonic_boom ^-1.3 ^1.9 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 40 rotated ~ 0 run particle sonic_boom ^1.3 ^1.9 ^1 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 10 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 2 1
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 30 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 2 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 60 run playsound block.beacon.deactivate record @a ~ ~ ~ 2 1

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 30 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 35 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 40 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 50 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 55 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init
execute if score @s zombie.chaos.chaos_golem.skill_timer matches 60 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/init

execute if score @s zombie.chaos.chaos_golem.skill_timer matches 100 run function zombie:skill/chaos/chaos_golem/skill/shoot/end
