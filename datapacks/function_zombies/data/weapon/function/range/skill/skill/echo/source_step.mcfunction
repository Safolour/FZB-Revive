$execute store result score #echo_shot weapon.state as @a[tag=chosen,limit=1,scores={stat.player=1}] at @s if score @s weapon.gun_$(gun)_ammo matches 1.. run function weapon:range/gun/gun/$(gun)/extrashot
execute unless score #echo_shot weapon.state matches 1.. run scoreboard players set @s weapon.gun_extrashot 0
