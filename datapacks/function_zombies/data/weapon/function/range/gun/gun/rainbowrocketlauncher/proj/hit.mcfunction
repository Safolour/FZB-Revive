tag @s remove gethit
execute if score @e[tag=rainbowrocketlauncher_active,limit=1] weapon.rainbowrocketlauncher_pierce matches ..-1 run return 0
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return 0
execute if entity @s[tag=firelord.p2.ghast] run return run function weapon:range/gun/detect/invulnerable_hit
scoreboard players set @e[tag=rainbowrocketlauncher_active,limit=1] weapon.rainbowrocketlauncher_pierce -1
execute if score gun weapon.use matches 10056 run function weapon:range/gun/gun/rainbowrocketlauncher/hit
execute if score gun weapon.use matches 10062 run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/hit
execute if score gun weapon.use matches 10063 run function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/hit
execute if score gun weapon.use matches 10064 run function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/hit
tag @s remove hit
tag @s remove hit1
tag @s remove hit2
