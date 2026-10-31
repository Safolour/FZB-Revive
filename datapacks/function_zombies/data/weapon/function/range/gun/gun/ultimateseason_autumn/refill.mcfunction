title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateseason_autumn_clip_ammo = clip_ammo weapon.gun_ultimateseason_autumn
execute if score @s weapon.gun_ultimateseason_autumn_ammo >= clip_ammo weapon.gun_ultimateseason_autumn run function weapon:range/gun/slot/count {gun:"ultimateseason_autumn"}
execute if score @s weapon.gun_ultimateseason_autumn_ammo >= clip_ammo weapon.gun_ultimateseason_autumn run return fail
scoreboard players operation @s weapon.gun_ultimateseason_autumn_clip_ammo = @s weapon.gun_ultimateseason_autumn_ammo
function weapon:range/gun/slot/count {gun:"ultimateseason_autumn"}
