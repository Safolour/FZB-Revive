
$data remove storage powerup bossbar.name[0][{translate:"zb.powerup.$(powerup).2"}]
data modify storage powerup bossbar.name[0][0].with set value [{text:""}]

execute if score timer powerup.timer.shoppingspree matches 0 run scoreboard players operation @e[tag=luckychest] luckychest.price = price luckychest
execute if score timer powerup.timer.shoppingspree matches 0 run execute as @e[tag=luckychest,scores={luckychest.state=1}] at @s run function map:luckychest/summon/text3
