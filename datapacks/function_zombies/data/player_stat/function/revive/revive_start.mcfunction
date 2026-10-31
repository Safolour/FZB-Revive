
execute unless score @s stat.revive_time = @s stat.revive_time run scoreboard players operation @s stat.revive_time = default stat.revive_time
scoreboard players operation @s revive.revive_target = @p[tag=chosen] uuid
scoreboard players operation @p[tag=chosen] revive.revive_target = @s uuid
scoreboard players operation @p[tag=chosen] revive.timer = @s stat.revive_time
execute as @p[tag=chosen] if entity @s[scores={revive.cooldown=1..}] run scoreboard players operation @s revive.timer = default stat.revive_time
data modify entity @n[type=armor_stand,tag=player_stat,tag=text1,scores={revive=2}] CustomName set value [{translate:"zb.revive.text.1_0"}]