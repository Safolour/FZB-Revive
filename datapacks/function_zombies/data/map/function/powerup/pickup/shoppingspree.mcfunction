

scoreboard players operation @e[tag=luckychest] luckychest.price = price.shoppingspree luckychest
execute as @e[tag=luckychest,scores={luckychest.state=1}] at @s run function map:luckychest/summon/text3
function map:powerup/presentation/effect/shoppingspree {players:"@a[scores={system.room=4..}]"}
