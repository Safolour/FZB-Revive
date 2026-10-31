scoreboard players add @s zombie.remains.bomber.skill_timer 1
execute store result score random zombie.random run random value 0..10
execute if score random zombie.random matches 0 run scoreboard players add @s zombie.remains.bomber.skill_timer 5
scoreboard players reset random zombie.random
execute on target if entity @s[scores={stat.player=1}] run tag @s add target
execute if entity @a[tag=target,distance=..2] run scoreboard players add @s zombie.remains.bomber.skill_timer 1
execute if entity @a[tag=target,distance=..5] run scoreboard players add @s zombie.remains.bomber.skill_timer 1
execute if entity @a[tag=target,distance=..10] run scoreboard players add @s zombie.remains.bomber.skill_timer 1
execute if entity @a[tag=target,distance=..15] run effect give @s slowness 1 255 true
execute if entity @a[tag=target,distance=20..] run return run tag @a[tag=target] remove target
tag @a[tag=target] remove target
execute if score @s zombie.remains.bomber.skill_timer matches ..100 run return 0

execute on target if entity @s[scores={stat.player=1}] run tag @s add target
execute unless entity @a[tag=target] run return run tag @a[tag=target] remove target

scoreboard players set time zombie.skill.missile 25
execute at @a[tag=target] positioned ~ ~1 ~ run function zombie:skill/missile/start
summon marker ~ ~1.5 ~ {Tags:["mob.skill","skill.remains.bomber.throw","chosen"]}
execute as @e[type=marker,tag=chosen] run function zombie:skill/remains/bomber/throw/item with storage zombie.skill.missile root.motion
kill @e[type=marker,tag=chosen]
tag @a[tag=target] remove target
scoreboard players set @s zombie.remains.bomber.skill_timer 0

particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0 30 force @a[scores={particle=0}]
playsound entity.snowball.throw record @a ~ ~ ~ 2 1
playsound entity.blaze.shoot record @a ~ ~ ~ 1.5 1
