scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_timer 0
tag @s add skill.ultimatechaoszombie.attack_electric1

function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/spawn/1

data modify entity @e[type=marker,limit=1,tag=chosen] Rotation set from entity @s Rotation
execute as @e[type=marker,tag=chosen] run tp @s ~ ~ ~ ~ 0

data modify entity @e[type=marker,limit=1,tag=chosen1] Rotation set from entity @s Rotation
execute as @e[type=marker,tag=chosen1] run tp @s ~ ~ ~ ~15 0

data modify entity @e[type=marker,limit=1,tag=chosen2] Rotation set from entity @s Rotation
execute as @e[type=marker,tag=chosen2] run tp @s ~ ~ ~ ~-15 0

tag @e[type=marker,tag=chosen] remove chosen
tag @e[type=marker,tag=chosen1] remove chosen1
tag @e[type=marker,tag=chosen2] remove chosen2


particle flash ~ ~1 ~ 0 0 0 0 0 force @a[scores={particle=0}]
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1 2
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
