
$execute as @p[tag=chosen,gamemode=!spectator] unless score @s stat.player matches 2..3 at @s if score @s weapon.gun_$(gun)_ammo matches 1.. if score @s weapon.gun_$(gun)_clip_ammo matches 1.. if function weapon:range/gun/gun/$(gun)/extrashot run return fail
