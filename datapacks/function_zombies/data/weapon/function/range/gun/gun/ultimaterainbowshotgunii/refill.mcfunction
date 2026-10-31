title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowshotgunii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgunii
execute if score @s weapon.gun_ultimaterainbowshotgunii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgunii run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgunii"}
execute if score @s weapon.gun_ultimaterainbowshotgunii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotgunii run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowshotgunii_clip_ammo = @s weapon.gun_ultimaterainbowshotgunii_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgunii"}
