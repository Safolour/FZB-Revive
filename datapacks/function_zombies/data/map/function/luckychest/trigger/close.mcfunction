
kill @e[tag=luckychest,tag=item]
kill @e[type=armor_stand,tag=luckychest,tag=text2]
kill @e[type=armor_stand,tag=luckychest,tag=text3]
scoreboard players set @s luckychest.state 1
execute as @n[type=armor_stand,tag=luckychest,tag=text1] run function map:luckychest/summon/text2

function map:luckychest/trigger/animation_close