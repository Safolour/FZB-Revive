
execute if score @s zombie.health0 = @s zombie.health0 run return fail
tag @s add path
tag @s add chosen
tag @s[nbt={Silent:1b}] add silent
execute if entity @s[tag=skill.rainbowzombie] run scoreboard players set @s armor.rainbow_armor 1

execute if items entity @s[scores={armor.rainbow_armor=1}] armor.head leather_helmet run item replace entity @s armor.head with leather_helmet[equippable={asset_id:leather,equip_sound:{sound_id:"",range:-1},slot:head}]
execute if items entity @s[scores={armor.rainbow_armor=1}] armor.chest leather_chestplate run item replace entity @s armor.chest with leather_chestplate[equippable={asset_id:leather,equip_sound:{sound_id:"",range:-1},slot:"chest"}]
execute if items entity @s[scores={armor.rainbow_armor=1}] armor.legs leather_leggings run item replace entity @s armor.legs with leather_leggings[equippable={asset_id:leather,equip_sound:{sound_id:"",range:-1},slot:"legs"}]
execute if items entity @s[scores={armor.rainbow_armor=1}] armor.feet leather_boots run item replace entity @s armor.feet with leather_boots[equippable={asset_id:leather,equip_sound:{sound_id:"",range:-1},slot:"feet"}]


execute unless score @s zombie.speed = @s zombie.speed store result score @s zombie.speed run data get entity @s attributes[{id:"minecraft:movement_speed"}].base 100
execute unless score @s zombie.health = @s zombie.health unless score @s zombie.health0 = @s zombie.health store result score @s zombie.health run data get entity @s Health 10
attribute @s max_health base set 1024
attribute @s follow_range base set 128
data merge entity @s {Health:1024f,PersistenceRequired:1b}
execute if score @s zombie.health = @s zombie.health run scoreboard players operation @s zombie.health0 = @s zombie.health
# 出生护甲只记这一次。技能把护甲抬高或恢复都不改它，视差红激光按这个数削
execute unless score @s zombie.armor_init = @s zombie.armor_init run scoreboard players operation @s zombie.armor_init = @s zombie.armor
execute unless score @s zombie.max_health = @s zombie.max_health run scoreboard players operation @s zombie.max_health = @s zombie.health
execute unless score @s zombie.bossbar_number = @s zombie.bossbar_number run scoreboard players operation @s[tag=bossbar] zombie.bossbar_number = default zombie.bossbar_number
execute unless score @s zombie.bossbar_speed_stay = @s zombie.bossbar_speed_stay run scoreboard players operation @s[tag=bossbar] zombie.bossbar_speed_stay = default zombie.bossbar_speed_stay
execute unless score @s zombie.bossbar_speed_fade = @s zombie.bossbar_speed_fade run scoreboard players operation @s[tag=bossbar] zombie.bossbar_speed_fade = default zombie.bossbar_speed_fade

team join mob @s
scoreboard players set @s path.tp_binding 3
execute at @s if entity @n[type=marker,tag=spawner,tag=window,distance=..3] run function map:path/summon/0
execute at @s unless entity @s[tag=skill.chaosgolem] if entity @n[type=marker,tag=spawner,tag=portal,distance=..3] run scoreboard players set @s path.in_window 2

scoreboard players set @s path.timer 20
execute unless score @s path.in_window = @s path.in_window run scoreboard players set @s path.in_window 0
tag @s remove chosen