# A non-player anchor; the server-only renderer supplies the Str_Snow_ appearance.
scoreboard players set #wanted setting.npc 1
function mainlobby:setting/npc/chunk
schedule clear mainlobby:setting/npc/cancel_spawn
schedule clear mainlobby:setting/npc/finish_spawn
execute in minecraft:overworld unless loaded 20 -59 845 run return run schedule function mainlobby:setting/npc/finish_spawn 2t replace
execute in minecraft:overworld unless entity @e[type=armor_stand,tag=setting.gear_npc] run summon armor_stand 20.5 -59 845.5 {Tags:["setting.gear_npc"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Rotation:[90f,0f]}
execute in minecraft:overworld as @e[type=armor_stand,tag=setting.gear_npc] at @s run function mainlobby:setting/npc/ready
