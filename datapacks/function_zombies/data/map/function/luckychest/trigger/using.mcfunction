
scoreboard players operation uuid luckychest.user_uuid = @s luckychest.user_uuid
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute as @p[tag=chosen] unless score @s uuid = uuid luckychest.user_uuid run tellraw @s [{translate:zb.luckychest.tellraw.4}]