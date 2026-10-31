

scoreboard players operation @e[tag=luckychest] luckychest.price = price.shoppingspree luckychest
execute as @e[tag=luckychest,scores={luckychest.state=1}] at @s run function map:luckychest/summon/text3
tellraw @a[scores={system.room=4..}] [{translate:zb.powerup.tellraw.2}]
execute as @a[scores={system.room=4..}] at @s run playsound entity.horse.armor record @s ~ ~ ~ 10 0