
scoreboard players operation uuid area.reaction.fire_bar.uuid = @s area.reaction.fire_bar.uuid
execute if entity @s[tag=mob_bar] as @e[tag=mob] if score @s zombie.uuid = uuid area.reaction.fire_bar.uuid run return run tag @s add chosen
execute if entity @s[tag=player_bar] as @a[scores={system.room=4..,area.reaction.fire=1..}] if score @s uuid = uuid area.reaction.fire_bar.uuid run return run tag @s add chosen