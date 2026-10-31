
execute if score @s zombie.creation.destruction matches 10000.. run particle large_smoke ~ ~1.5 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]

execute if score @s zombie.creation.destruction matches 10000 run effect give @s glowing infinite 0 true
execute if score @s zombie.creation.destruction matches 10000 run team join zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10002 run effect clear @s glowing
execute if score @s zombie.creation.destruction matches 10002 run team leave zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10009 run effect give @s glowing infinite 0 true
execute if score @s zombie.creation.destruction matches 10009 run team join zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10015 run effect clear @s glowing
execute if score @s zombie.creation.destruction matches 10015 run team leave zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10020 run effect give @s glowing infinite 0 true
execute if score @s zombie.creation.destruction matches 10020 run team join zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10024 run effect clear @s glowing
execute if score @s zombie.creation.destruction matches 10024 run team leave zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10027 run effect give @s glowing infinite 0 true
execute if score @s zombie.creation.destruction matches 10027 run team join zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10029 run effect clear @s glowing
execute if score @s zombie.creation.destruction matches 10029 run team leave zombie.creation.destruction
execute if score @s zombie.creation.destruction matches 10000 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10002 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10009 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10015 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10020 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10024 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10028 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10029 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 1.7
execute if score @s zombie.creation.destruction matches 10030 run function zombie:skill/creation/destruction/explosion
execute if score @s zombie.creation.destruction matches 1.. run scoreboard players add @s zombie.creation.destruction 1
execute unless score @s zombie.creation.destruction = @s zombie.creation.destruction run scoreboard players add @s zombie.creation.destruction 0
execute if entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run function zombie:skill/creation/destruction/primed
scoreboard players operation health zombie.creation.destruction = @s zombie.health
scoreboard players operation maxhealth zombie.creation.destruction = @s zombie.max_health
scoreboard players set 100 zombie.creation.destruction 100
scoreboard players operation health zombie.creation.destruction *= 100 zombie.creation.destruction
scoreboard players operation health zombie.creation.destruction /= maxhealth zombie.creation.destruction
scoreboard players reset maxhealth zombie.creation.destruction
scoreboard players reset 100 zombie.creation.destruction
execute if score health zombie.creation.destruction matches ..40 if score @s zombie.creation.destruction matches ..9999 run scoreboard players set @s zombie.creation.destruction 10000
scoreboard players reset health zombie.creation.destruction
execute if score @s zombie.creation.destruction matches ..20 run return fail
execute if entity @s[tag=skill.creation.destruction.explosion] run return fail
function zombie:skill/creation/destruction/primed
