execute if data entity @s data.target run data remove entity @s data.target
function weapon:range/gun/gun/paradox/proj/select_target
execute if data entity @s data.target run function weapon:range/gun/gun/paradox/proj/face_target with entity @s data
execute if score #target_ok weapon.pd_hit matches 1 run return 1
execute as @a[tag=paradox.shooter,limit=1] at @s anchored eyes positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["paradox.aim"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=paradox.aim,limit=1] feet
kill @e[type=marker,tag=paradox.aim]
