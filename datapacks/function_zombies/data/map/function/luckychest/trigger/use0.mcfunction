function mainlobby:setting/powerup/lucky_price

execute unless score @s luckychest.state matches 1.. as @p[tag=chosen] at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute unless score @s luckychest.state matches 1.. run return run tellraw @p[tag=chosen] [{translate:"zb.luckychest.tellraw.1"}]

execute if score @s luckychest.state matches 3 run return run function map:luckychest/trigger/pickup with entity @s data.item

execute if score @s luckychest.state matches 2 run return run function map:luckychest/trigger/using

execute if score @s luckychest.state matches 1 unless score @p[tag=chosen] gold >= @s luckychest.price as @p[tag=chosen] at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score @s luckychest.state matches 1 unless score @p[tag=chosen] gold >= @s luckychest.price run tellraw @p[tag=chosen] [{translate:"zb.luckychest.tellraw.2"}]
execute if score @s luckychest.state matches 1 if score @p[tag=chosen] gold >= @s luckychest.price run return run function map:luckychest/trigger/open


