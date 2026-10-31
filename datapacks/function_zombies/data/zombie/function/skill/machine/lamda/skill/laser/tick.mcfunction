scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 1 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 6 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 11 run playsound entity.warden.sonic_charge record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 41 run playsound entity.wither.spawn record @a ~ ~ ~ 3 0
execute if score @s zombie.lamda.skill_timer matches 41 run playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 3 0
execute if score @s zombie.lamda.skill_timer matches 41 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 46 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 51 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 56 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 61 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 66 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 71 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 76 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 81 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 86 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 91 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 96 run playsound entity.warden.sonic_boom record @a ~ ~ ~ 3 1
execute if score @s zombie.lamda.skill_timer matches 100 run playsound block.beacon.deactivate record @a ~ ~ ~ 3 1

execute if score @s zombie.lamda.skill_timer matches 1 run function zombie:skill/machine/lamda/skill/laser/0/init
execute if score @s zombie.lamda.skill_timer matches 11 positioned ^ ^ ^1 run function zombie:skill/machine/lamda/skill/laser/0/init
execute if score @s zombie.lamda.skill_timer matches 21 run function zombie:skill/machine/lamda/skill/laser/0/init

execute if score @s zombie.lamda.skill_timer matches 1 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 5 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 9 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 13 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 17 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 21 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 25 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 29 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 33 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.lamda.skill_timer matches 39 run particle gust_emitter_large ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.lamda.skill_timer matches 40 run playsound block.bell.use record @a ~ ~ ~ 3 0

execute if score @s zombie.lamda.skill_timer matches 1 run function zombie:skill/machine/lamda/skill/laser/1/init

execute if score @s zombie.lamda.skill_timer matches 40 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 50 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 60 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 70 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 80 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 90 run function zombie:skill/machine/lamda/skill/laser/2/init
execute if score @s zombie.lamda.skill_timer matches 100 run function zombie:skill/machine/lamda/skill/laser/2/init

execute if score @s zombie.lamda.skill_timer matches 120 run function zombie:skill/machine/lamda/skill/laser/end
