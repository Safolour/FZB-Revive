scoreboard players operation uuid zombie.uuid = @s zombie.uuid
scoreboard players operation #owner origin.owner = @s origin.owner
execute positioned ~ ~ ~-1 run function zombie:skill/creation/titan/eclipse/death_fx/start
# The sound source follows the visible sphere, one block behind its hitbox.
playsound minecraft:item.trident.thunder hostile @a[scores={system.room=4..}] ~ ~ ~-1 10 0
playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..}] ~ ~ ~-1 10 0
playsound minecraft:block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~-1 10 0
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~-1 10 0
execute as @e[type=item_display,tag=titan.eclipse.shell] if score @s origin.owner = #owner origin.owner run kill @s
execute as @e[type=armor_stand,tag=bossbar] if score @s zombie.uuid = uuid zombie.uuid run kill @s
