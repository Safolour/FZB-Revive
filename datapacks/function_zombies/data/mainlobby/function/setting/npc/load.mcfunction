# The NPC is an armor stand, rendered with its full skin by fzb-settingnpc.
scoreboard objectives add setting.npc dummy
scoreboard players set #wanted setting.npc 1
function mainlobby:setting/npc/chunk
schedule clear mainlobby:setting/npc/finish_spawn
schedule clear mainlobby:setting/npc/cancel_spawn
# Migrate an existing Carpet NPC once; never spawn a player again.
execute if entity @a[name=fzb_gearnpc] run player fzb_gearnpc kill
scoreboard players reset fzb_gearnpc
team add setting_gear_npc
team modify setting_gear_npc collisionRule never
team modify setting_gear_npc nametagVisibility never
team join setting_gear_npc fzb_gearnpc
execute in minecraft:overworld as @e[type=armor_stand,tag=setting.gear_npc] at @s run function mainlobby:setting/npc/ready
