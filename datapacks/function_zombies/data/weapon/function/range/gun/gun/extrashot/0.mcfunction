#tellraw @a [{score:{name:uuid,objective:weapon.gun_uuid}}]
execute unless score @s weapon.gun_extrashot_time0 = @s weapon.gun_extrashot_time0 run scoreboard players operation @s weapon.gun_extrashot_time0 = @s weapon.gun_extrashot_time
scoreboard players remove @s weapon.gun_extrashot_time0 1
execute if score @s weapon.gun_extrashot_time0 matches 0.. run return fail
scoreboard players operation @s weapon.gun_extrashot_time0 = @s weapon.gun_extrashot_time
scoreboard players remove @s weapon.gun_extrashot 1
scoreboard players operation uuid weapon.gun_uuid = @s weapon.gun_uuid
execute as @a if score @s uuid = uuid weapon.gun_uuid run tag @s add chosen
execute if entity @s[tag=echo_burst] run function weapon:range/skill/skill/echo/extrashot/step with entity @s data
execute unless entity @s[tag=echo_burst] run function weapon:range/skill/skill/echo/source_step with entity @s data
execute if score @s weapon.gun_extrashot matches ..0 unless entity @s[tag=echo_burst] run function weapon:range/skill/skill/echo/complete with entity @s data
tag @a[tag=chosen] remove chosen

execute if score @s weapon.gun_extrashot matches ..0 run kill @s
