scoreboard players operation #owner weapon.pd_owner = @s weapon.pd_owner
execute as @a if score @s uuid = #owner weapon.pd_owner run tag @s add paradox.shooter
execute unless entity @a[tag=paradox.shooter] run return run kill @s
scoreboard players operation #previous weapon.state = @a[tag=paradox.shooter,limit=1] weapon.use
scoreboard players set @a[tag=paradox.shooter] weapon.use 10081
scoreboard players set gun weapon.use 10081
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
tag @s add paradox.active
tag @s add chosen
scoreboard players set @s weapon.pd_steps 3
function weapon:range/gun/gun/paradox/proj/step
tag @s remove chosen
tag @s remove paradox.active
scoreboard players operation @a[tag=paradox.shooter,limit=1] weapon.use = #previous weapon.state
tag @a[tag=paradox.shooter] remove paradox.shooter
execute if score @s weapon.pd_dist matches 30.. run kill @s
