playsound entity.generic.explode player @a ~ ~ ~ 2 1 0
summon marker ~ ~ ~ {Tags:["gun","rainbowrocketlauncher_explosion","rrl_new"]}
scoreboard players operation @e[tag=rrl_new,limit=1] weapon.gun_color = @s weapon.gun_color
scoreboard players operation @e[tag=rrl_new,limit=1] weapon.gun_uuid = @s weapon.gun_uuid
scoreboard players set @e[tag=rrl_new,limit=1] weapon.rrl_frame 0
execute store result score @e[tag=rrl_new,limit=1] weapon.rrl_born run time query gametime
execute if score @s weapon.gun_color matches 0 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:16711680,to_color:16748800}
execute if score @s weapon.gun_color matches 1 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:16748800,to_color:16775936}
execute if score @s weapon.gun_color matches 2 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:16775936,to_color:6225664}
execute if score @s weapon.gun_color matches 3 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:6225664,to_color:65446}
execute if score @s weapon.gun_color matches 4 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:65446,to_color:29695}
execute if score @s weapon.gun_color matches 5 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:29695,to_color:8651007}
execute if score @s weapon.gun_color matches 6 run data modify entity @e[tag=rrl_new,limit=1] data set value {from_color:8651007,to_color:16711680}
tag @e[tag=rrl_new] remove rrl_new
