
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
execute as @e[type=armor_stand,tag=bossbar] if score @s zombie.uuid = uuid zombie.uuid run return run scoreboard players set @s zombie.bossbar_tp 2
summon armor_stand ~ ~2 ~ {Tags:["mob.skill","uuid","bossbar","chosen"],CustomName:[{text:""}],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b}
scoreboard players operation @n[type=armor_stand,tag=chosen] zombie.uuid = uuid zombie.uuid
scoreboard players operation @n[type=armor_stand,tag=chosen] zombie.bossbar_speed_stay = @s zombie.bossbar_speed_stay
scoreboard players operation @n[type=armor_stand,tag=chosen] zombie.bossbar_speed_fade = @s zombie.bossbar_speed_fade
scoreboard players set @n[type=armor_stand,tag=chosen] zombie.bossbar_tp 2
tag @n[type=armor_stand,tag=chosen] remove chosen
function zombie:bossbar/if_health