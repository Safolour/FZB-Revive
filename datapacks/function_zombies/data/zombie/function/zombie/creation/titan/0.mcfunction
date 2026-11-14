# 由旧起源执行；#owner 为这次维度坍缩的 owner。泰坦是新实体，不带 skill.origin。
# 录像 20636822：scale=6、movement_speed=0.29、safe_fall_distance=10、burning_time=0；装备取原始 equipment 包。
summon zombie 300.5 73 150.5 {NoAI:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["origin.phase.titan.new","titan.awaiting","mob","boss","bossbar","zombieleft","deathmessage","cantinstakill","cantslow","cantpuncher","cantgyro","giantzombie","skill.titan"],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:movement_speed",base:0.29},{id:"minecraft:scale",base:6},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:burning_time",base:0}],equipment:{mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:attribute_modifiers":[{id:"minecraft:attack_damage",amount:0,type:"minecraft:attack_damage",operation:"add_value"}]}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":4144959,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:bolt"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:eye"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":4605510,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:snout"}}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:rib"}}}},data:{name:[{translate:"zb.zombie.name.creation.titan"}]}}
tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.creation.titan"}]}
scoreboard players operation @e[type=zombie,tag=origin.phase.titan.new,limit=1] origin.owner = #owner origin.owner
# Independent P2 stats: 7500 health (score units are tenths), 80 armor.
scoreboard players set @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.health 75000
scoreboard players set @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.max_health 75000
scoreboard players set @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.armor 80
scoreboard players operation @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.knockresistance = @s zombie.knockresistance
# Both original replays show exactly 120 bars, independent of total health.
scoreboard players set @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.bossbar_number 120
scoreboard players operation @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.skill.damage = @s zombie.skill.damage
scoreboard players set @e[type=zombie,tag=origin.phase.titan.new,limit=1] zombie.speed 29
# Native damage is disabled; ordinary melee uses its own immediate skill.
execute as @e[type=zombie,tag=origin.phase.titan.new,limit=1] run function zombie:summon_uuid
execute as @e[type=zombie,tag=origin.phase.titan.new,limit=1] at @s run function zombie:summon
effect give @e[type=zombie,tag=origin.phase.titan.new,limit=1] minecraft:invisibility infinite 0 true
tag @e[type=zombie,tag=origin.phase.titan.new] remove origin.phase.titan.new
