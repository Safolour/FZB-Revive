scoreboard players add @s zombie.remains.blaze.skill_timer 1
tp @s ^ ^ ^0.5
particle large_smoke ~ ~0.3 ~ 0 0 0 0 1 force @a[scores={particle=0}]

scoreboard players set 10 zombie.number 10
scoreboard players operation pass zombie.number = @s zombie.remains.blaze.skill_timer
scoreboard players operation pass zombie.number %= 10 zombie.number
scoreboard players reset 10 zombie.number
execute if score pass zombie.number matches 0 run particle flame ~ ~0.1 ~ 0 0 0 0.05 10 force @a[scores={particle=0}]
execute if score pass zombie.number matches 0 run playsound block.fire.ambient
scoreboard players reset pass zombie.number

execute if entity @a[scores={stat.player=1},distance=..2] run scoreboard players set @s zombie.remains.blaze.skill_timer 100
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.remains.blaze.skill_timer 100

scoreboard players operation match zombie.remains.blaze.fire.match = @s zombie.remains.blaze.fire.match
execute as @e[type=block_display,tag=skill.blaze.fire.1] if score @s zombie.remains.blaze.fire.match = match zombie.remains.blaze.fire.match run tag @s add target
tp @e[type=block_display,tag=target] ~ ~ ~

scoreboard players reset match zombie.remains.blaze.fire.match
tag @e[type=block_display] remove target

execute unless score @s zombie.remains.blaze.skill_timer matches 100.. run return 0

scoreboard players operation match zombie.remains.blaze.fire.match = @s zombie.remains.blaze.fire.match
execute as @e[type=block_display,tag=skill.blaze.fire.1] if score @s zombie.remains.blaze.fire.match = match zombie.remains.blaze.fire.match run tag @s add target
scoreboard players reset match zombie.remains.blaze.fire.match

kill @e[type=block_display,tag=target]
kill @s

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle flame ~ ~ ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1

execute as @a[scores={stat.player=1},distance=..2,gamemode=adventure] at @s run function zombie:skill/remains/blaze/shoot/damage
