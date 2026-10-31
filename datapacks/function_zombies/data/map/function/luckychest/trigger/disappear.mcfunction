
scoreboard players operation uuid luckychest.user_uuid = @s luckychest.user_uuid
execute as @a if score @s uuid = uuid luckychest.user_uuid run tellraw @s [{translate:"zb.luckychest.tellraw.5"}]
function map:luckychest/trigger/close