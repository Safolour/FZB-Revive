scoreboard players operation #uuid weapon.gun_uuid = @s weapon.gun_uuid
execute as @a if score @s uuid = #uuid weapon.gun_uuid run tag @s add resonance_shooter
execute unless entity @a[tag=resonance_shooter,limit=1] run return run kill @s
scoreboard players operation #resonance_previous weapon.state = @a[tag=resonance_shooter,limit=1] weapon.use
scoreboard players operation @a[tag=resonance_shooter,limit=1] weapon.use = @s weapon.use
scoreboard players operation gun weapon.use = @s weapon.use
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
tag @s add chosen
tag @s add resonance_active
scoreboard players set @s weapon.resonance_stop 0
scoreboard players set @s weapon.resonance_steps 2
function weapon:range/gun/gun/resonance/proj/step
tag @s remove chosen
tag @s remove resonance_active
scoreboard players operation @a[tag=resonance_shooter,limit=1] weapon.use = #resonance_previous weapon.state
tag @a[tag=resonance_shooter] remove resonance_shooter
execute if score @s weapon.resonance_stop matches 1 run return run kill @s
execute if score @s weapon.resonance_dist >= @s weapon.range run kill @s
