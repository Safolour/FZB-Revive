# Observer chains follow a fixed monster even after the recorder turns away.
# Acquire the first living enemy on the owner's aim ray; remember its real UUID.
tag @s add paradox.selecting
scoreboard players operation #select_owner weapon.pd_owner = @s weapon.pd_owner
tag @a remove paradox.selector
execute as @a if score @s uuid = #select_owner weapon.pd_owner run tag @s add paradox.selector
execute as @a[tag=paradox.selector,limit=1] at @s anchored eyes run summon marker ^ ^ ^ {Tags:["paradox.lock_ray"]}
execute as @e[type=marker,tag=paradox.lock_ray,limit=1] at @s rotated as @a[tag=paradox.selector,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set #lock_steps weapon.pd_hit 48
scoreboard players set #target_found weapon.pd_hit 0
execute as @e[type=marker,tag=paradox.lock_ray,limit=1] at @s run function weapon:range/gun/gun/paradox/proj/lock_ray
kill @e[type=marker,tag=paradox.lock_ray]
tag @a remove paradox.selector
tag @s remove paradox.selecting
