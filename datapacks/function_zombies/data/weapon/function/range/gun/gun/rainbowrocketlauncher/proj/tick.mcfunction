scoreboard players operation #uuid weapon.gun_uuid = @s weapon.gun_uuid
execute as @a if score @s uuid = #uuid weapon.gun_uuid run tag @s add rainbowrocketlauncher_shooter
execute unless entity @a[tag=rainbowrocketlauncher_shooter,limit=1] run return run kill @s
scoreboard players operation #rainbowrocketlauncher_previous weapon.state = @a[tag=rainbowrocketlauncher_shooter,limit=1] weapon.use
scoreboard players operation @a[tag=rainbowrocketlauncher_shooter,limit=1] weapon.use = @s weapon.use
scoreboard players operation gun weapon.use = @s weapon.use
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
tag @s add chosen
tag @s add rainbowrocketlauncher_active
scoreboard players set @s weapon.rainbowrocketlauncher_stop 0
scoreboard players set @s weapon.rainbowrocketlauncher_steps 4
function weapon:range/gun/gun/rainbowrocketlauncher/proj/step
tag @s remove chosen
tag @s remove rainbowrocketlauncher_active
scoreboard players operation @a[tag=rainbowrocketlauncher_shooter,limit=1] weapon.use = #rainbowrocketlauncher_previous weapon.state
tag @a[tag=rainbowrocketlauncher_shooter] remove rainbowrocketlauncher_shooter
execute if score @s weapon.rainbowrocketlauncher_stop matches 1 at @s run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/start
execute if score @s weapon.rainbowrocketlauncher_stop matches 1 run return run kill @s
execute if score @s weapon.rainbowrocketlauncher_dist >= @s weapon.range run kill @s
