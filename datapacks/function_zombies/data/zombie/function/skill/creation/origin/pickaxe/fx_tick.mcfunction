execute unless entity @s[tag=origin.pickaxe.anchor] run return 0
scoreboard players add @s origin.fx_age 1
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
scoreboard players operation #owner origin.owner = @s origin.owner
execute as @e[type=marker,tag=origin.pickaxe.hitmark] if score @s origin.fx_id = #fx origin.fx_id run function zombie:skill/creation/origin/pickaxe/cooldown
execute if score #pickaxe.life origin.tool_cfg matches 1.. if score @s origin.fx_age >= #pickaxe.life origin.tool_cfg run return run function zombie:skill/creation/origin/pickaxe/fx_finish
# Retire stray pickaxes only when the nearest eligible player is strictly over 25 blocks away.
execute at @s unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..25] run return run function zombie:skill/creation/origin/pickaxe/fx_finish
# Replay crit positions align contacts before movement; use that same carrier snapshot.
# Radius 1.1 is a calibrated reconstruction (09/30), not a recovered native hitbox.
execute at @s positioned ~ ~-1.2 ~ as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..1.1] run function zombie:skill/creation/origin/pickaxe/check_hit
execute at @s run particle minecraft:crit ~ ~0.4 ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
execute at @s run function zombie:skill/creation/origin/pickaxe/steer
# Travel by the newly accelerated persistent vector, independent of execution rotation.
execute store result storage origin_tool pickaxe_step.x double 0.000001 run scoreboard players get @s origin.pick_vx
execute store result storage origin_tool pickaxe_step.y double 0.000001 run scoreboard players get @s origin.pick_vy
execute store result storage origin_tool pickaxe_step.z double 0.000001 run scoreboard players get @s origin.pick_vz
execute at @s run function zombie:skill/creation/origin/pickaxe/gravity_move with storage origin_tool pickaxe_step
# Check the new position too so an outward step cannot leave the pickaxe beyond the limit for a tick.
execute at @s unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..25] run return run function zombie:skill/creation/origin/pickaxe/fx_finish
scoreboard players operation #spin origin.tool_cfg = @s origin.fx_age
scoreboard players set #thirty origin.tool_cfg 30
scoreboard players operation #spin origin.tool_cfg *= #thirty origin.tool_cfg
execute store result storage origin_tool spin.yaw float 1 run scoreboard players get #spin origin.tool_cfg
execute at @s as @e[type=item_display,tag=origin.pickaxe.model] if score @s origin.fx_id = #fx origin.fx_id run function zombie:skill/creation/origin/pickaxe/spin with storage origin_tool spin
