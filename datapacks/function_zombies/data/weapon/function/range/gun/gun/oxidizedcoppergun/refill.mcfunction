title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo = clip_ammo weapon.gun_oxidizedcoppergun
execute if score @s weapon.gun_oxidizedcoppergun_ammo >= clip_ammo weapon.gun_oxidizedcoppergun run function weapon:range/gun/slot/count {gun:"oxidizedcoppergun"}
execute if score @s weapon.gun_oxidizedcoppergun_ammo >= clip_ammo weapon.gun_oxidizedcoppergun run return fail
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo = @s weapon.gun_oxidizedcoppergun_ammo
function weapon:range/gun/slot/count {gun:"oxidizedcoppergun"}
