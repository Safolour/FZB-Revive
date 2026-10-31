
scoreboard players set @s path.summon 1
execute unless score @s path.summon matches 1.. run return fail
tag @s add chosen
 scoreboard players set @s path.tp_binding 1
scoreboard players set @s path.delay 2
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
scoreboard players operation score path.in_window = @s path.in_window
execute as @s at @s run summon skeleton ~ ~ ~ {Tags:["path","pathfinding","chosen"],PersistenceRequired:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:knockback_resistance,base:447},{id:follow_range,base:128},{id:attack_damage,base:-1}]}
execute as @s at @s run summon skeleton ~ ~ ~ {Tags:["path","pathfinding","chosen"],PersistenceRequired:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:knockback_resistance,base:447},{id:follow_range,base:128},{id:attack_damage,base:-1}]}
execute as @e[type=skeleton,tag=path,tag=pathfinding,tag=chosen] at @s run function map:path/summon/5
team join mob @s
tag @s remove chosen