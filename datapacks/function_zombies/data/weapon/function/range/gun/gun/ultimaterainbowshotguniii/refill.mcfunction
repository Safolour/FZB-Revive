title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotguniii
execute if score @s weapon.gun_ultimaterainbowshotguniii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotguniii run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotguniii"}
execute if score @s weapon.gun_ultimaterainbowshotguniii_ammo >= clip_ammo weapon.gun_ultimaterainbowshotguniii run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowshotguniii_clip_ammo = @s weapon.gun_ultimaterainbowshotguniii_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotguniii"}
