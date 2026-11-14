scoreboard players add @s weapon.gun_shot 1
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["gun","paradox.proj","paradox.new"],data:{hits:[]}}
scoreboard players operation @n[type=marker,tag=paradox.new] weapon.gun_uuid = @s uuid
scoreboard players operation @n[type=marker,tag=paradox.new] weapon.pd_owner = @s uuid
scoreboard players operation @n[type=marker,tag=paradox.new] weapon.pd_damage = damage weapon.gun_paradox
execute if score @s weapon.pd_state matches 2 run scoreboard players operation @n[type=marker,tag=paradox.new] weapon.pd_damage = dream_damage weapon.gun_paradox
scoreboard players set @n[type=marker,tag=paradox.new] weapon.use 10081
scoreboard players set @n[type=marker,tag=paradox.new] weapon.pd_pierce -1
scoreboard players set @n[type=marker,tag=paradox.new] weapon.pd_dist 0
scoreboard players set @n[type=marker,tag=paradox.new] weapon.pd_hit 0
execute store result score @n[type=marker,tag=paradox.new] weapon.pd_born run time query gametime
tag @s add paradox.launcher
execute as @n[type=marker,tag=paradox.new] at @s rotated as @a[tag=paradox.launcher,limit=1] run tp @s ~ ~ ~ ~ ~
tag @s remove paradox.launcher
# Observer packets include starts beyond 45 degrees. The spread precedes spherical guidance.
scoreboard players set #spread_x weapon.state 6000
scoreboard players set #spread_y weapon.state 6000
execute as @n[type=marker,tag=paradox.new] at @s run function weapon:range/gun/spread
execute as @n[type=marker,tag=paradox.new] at @s run function weapon:range/gun/gun/paradox/proj/select_target
execute as @n[type=marker,tag=paradox.new] at @s run function weapon:range/gun/gun/paradox/proj/advance
tag @e[type=marker,tag=paradox.new] remove paradox.new
