
$function map:powerup/presentation/bar_remove {storage:"powerup",powerup:"$(powerup)"}

execute if score timer powerup.timer.shoppingspree matches 0 run scoreboard players operation @e[tag=luckychest] luckychest.price = price luckychest
execute if score timer powerup.timer.shoppingspree matches 0 run execute as @e[tag=luckychest,scores={luckychest.state=1}] at @s run function map:luckychest/summon/text3
