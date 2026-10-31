title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgun
execute if score @s weapon.gun_ultimaterainbowshotgun_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgun run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgun"}
execute if score @s weapon.gun_ultimaterainbowshotgun_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgun run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowshotgun_clip_ammo = @s weapon.gun_ultimaterainbowshotgun_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgun"}
