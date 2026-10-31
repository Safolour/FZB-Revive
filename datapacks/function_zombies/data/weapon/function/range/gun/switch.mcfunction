
execute if score @s weapon.gun_hold matches 1 run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold0 = @s weapon.gun_hold
scoreboard players set @s weapon.gun_noammo_cd -1



#execute if entity @s[scores={system.room=3}] run function map:waitlobby/scoreboard/time

title @s actionbar [{text:""}]