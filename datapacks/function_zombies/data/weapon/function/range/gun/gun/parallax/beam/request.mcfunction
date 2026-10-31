scoreboard players set @s weapon.parallax_lease 6
execute unless score @s weapon.parallax_mode = @s weapon.parallax_mode run scoreboard players set @s weapon.parallax_mode 0
scoreboard players operation #parallax_owner weapon.state = @s uuid
execute as @e[tag=parallax_beam] if score @s weapon.gun_uuid = #parallax_owner weapon.state run tag @s add parallax_found
execute unless entity @e[tag=parallax_found,limit=1] run function weapon:range/gun/gun/parallax/beam/spawn
tag @e[tag=parallax_found] remove parallax_found
