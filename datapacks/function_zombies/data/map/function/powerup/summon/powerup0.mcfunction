
execute if entity @s[tag=powerup,tag=powerup.maxammo] run function map:powerup/summon/maxammo
execute if entity @s[tag=powerup,tag=powerup.instakill] run function map:powerup/summon/instakill
execute if entity @s[tag=powerup,tag=powerup.doublegold] run function map:powerup/summon/doublegold
execute if entity @s[tag=powerup,tag=powerup.triplegold] run function map:powerup/summon/triplegold
execute if entity @s[tag=powerup,tag=powerup.quadruplegold] run function map:powerup/summon/quadruplegold
execute if entity @s[tag=powerup,tag=powerup.bonusgold] run function map:powerup/summon/bonusgold
execute if entity @s[tag=powerup,tag=powerup.shoppingspree] run function map:powerup/summon/shoppingspree
execute if entity @s[tag=powerup,tag=powerup.carpenter] run function map:powerup/summon/carpenter
execute if entity @s[tag=powerup,tag=powerup.purification] run function map:powerup/summon/purification
# 金钱丢失掉的：地上只留 10 秒（short powerup.timer），整段都在白色闪烁
execute if entity @s[tag=powerup.short] run scoreboard players operation @n[type=item,tag=powerup,distance=..0.5] powerup.timer = short powerup.timer
tag @s remove powerup
