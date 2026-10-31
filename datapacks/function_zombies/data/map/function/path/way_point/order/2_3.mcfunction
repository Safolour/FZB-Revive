
tag @s add selected
scoreboard players set @s path.way_point.order1 -1
scoreboard players add @s path.way_point.order0 1
scoreboard players operation order path.way_point.order0 = @s path.way_point.order0
#tellraw @a [{"selector":"@s"},{text:"->"},{"score":{"name":"@s","objective":"path.way_point.order0"}}]
function map:path/way_point/order/2_0 with entity @s data