
scoreboard players set @s revive.revive_target -1
scoreboard players operation @s revive.timer = death.time revive.timer
data modify entity @n[type=armor_stand,tag=player_stat,tag=text1,scores={revive=2}] CustomName set value [{translate:"zb.revive.text.1"}]

execute as @a[scores={stat.player=1}] if score @s revive.revive_target = uuid revive.revive_target run title @s actionbar [{text:""}]