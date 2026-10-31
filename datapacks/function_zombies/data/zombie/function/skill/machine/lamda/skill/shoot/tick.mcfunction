scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 20 rotated ~ 0 run particle gust ^-1.3 ^1.9 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 20 rotated ~ 0 run particle gust ^1.3 ^1.9 ^1 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.lamda.skill_timer matches 10 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 2 1
execute if score @s zombie.lamda.skill_timer matches 30 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 2 1

execute if score @s zombie.lamda.skill_timer matches 60 run playsound block.beacon.deactivate record @a ~ ~ ~ 2 1

execute if score @s zombie.lamda.skill_timer matches 30 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 36 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 42 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 48 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 54 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 60 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 66 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 72 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 78 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 84 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 90 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 96 rotated ~ 0 positioned ^-1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init

execute if score @s zombie.lamda.skill_timer matches 33 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 39 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 45 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 51 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 57 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 63 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 70 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 76 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 82 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 88 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 94 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init
execute if score @s zombie.lamda.skill_timer matches 100 rotated ~ 0 positioned ^1.3 ^1.9 ^1 run function zombie:skill/machine/lamda/skill/shoot/bullet/init




execute if score @s zombie.lamda.skill_timer matches 140 run function zombie:skill/machine/lamda/skill/shoot/end
