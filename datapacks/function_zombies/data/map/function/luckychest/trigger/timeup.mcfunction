
execute at @s run summon armor_stand ~ ~2.5 ~ {Tags:["luckychest",text,"text3"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{text:""}]}
scoreboard players set @s luckychest.state 3
scoreboard players operation @s luckychest.timer = disappear.time luckychest
function map:luckychest/time/0
scoreboard players operation uuid luckychest.user_uuid = @s luckychest.user_uuid
execute as @a if score @s uuid = uuid luckychest.user_uuid run tag @s add chosen
$execute as @a[tag=chosen] run tellraw @s [{translate:"zb.luckychest.tellraw.6",with:[{translate:"zb.luckychest.item.$(id)"},{nbt:"root.time.second",storage:luckychest,color:red},{nbt:"root.time.second0",storage:luckychest,color:red}]}]
$execute as @a[tag=chosen] run tellraw @a[tag=!chosen] [{translate:"zb.luckychest.tellraw.7",with:[{selector:"@s","color":"white"},{translate:"zb.luckychest.item.$(id)"}]}]
tag @a[tag=chosen] remove chosen
data modify entity @n[type=armor_stand,tag=luckychest,tag=text1] CustomName set value [{translate:"zb.luckychest.4"}]