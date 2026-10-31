execute unless score @s zombie.giant.attack = @s zombie.giant.attack run scoreboard players add @s zombie.giant.attack 0
execute if score @s zombie.giant.attack matches ..10 run scoreboard players add @s zombie.giant.attack 1

execute if score @s zombie.giant.attack matches 11 run function zombie:skill/giant/attack
execute if score @s zombie.giant.attack matches 11 run scoreboard players set @s zombie.giant.attack 0
