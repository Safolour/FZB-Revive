title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_oxidizedcoppergun
execute if score @s weapon.gun_oxidizedcoppergun_ammo >= clip_ammo weapon.gun_oxidizedcoppergun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_oxidizedcoppergun_ammo >= clip_ammo weapon.gun_oxidizedcoppergun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_oxidizedcoppergun_ammo
function weapon:range/skill/skill/echo/count
