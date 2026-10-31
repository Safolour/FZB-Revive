scoreboard players add @s zombie.nuclearcreeper.explosion 1

tp @s ~ ~0.5 ~
scoreboard players operation match zombie.nuclearcreeper.match = @s zombie.nuclearcreeper.match
execute as @a[scores={system.room=4..}] if score @s uuid = match zombie.nuclearcreeper.match run playsound entity.allay.item_thrown master @s ~ ~ ~ 2 1
scoreboard players reset match zombie.nuclearcreeper.match

execute if score @s zombie.nuclearcreeper.explosion matches ..70 run return 0

scoreboard players reset @s zombie.nuclearcreeper.explosion
kill @s
