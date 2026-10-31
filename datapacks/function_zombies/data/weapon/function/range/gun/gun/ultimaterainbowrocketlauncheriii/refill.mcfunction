title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncheriii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncheriii
execute if score @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncheriii run function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncheriii"}
execute if score @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncheriii run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncheriii_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncheriii"}
