
scoreboard players add @s powerup.color 1
$execute if entity @s[scores={powerup.color=1}] run data modify entity @s CustomName set value [{translate:zb.powerup.$(powerup).1}]
$execute if entity @s[scores={powerup.color=2}] run data modify entity @s CustomName set value [{translate:zb.powerup.$(powerup).0}]

execute if entity @s[scores={powerup.color=2..}] run scoreboard players set @s powerup.color 0