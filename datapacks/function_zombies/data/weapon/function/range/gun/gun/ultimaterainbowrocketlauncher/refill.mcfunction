title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncher
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncher run function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncher"}
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_ammo >= clip_ammo weapon.gun_ultimaterainbowrocketlauncher run return fail
scoreboard players operation @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncher_ammo
function weapon:range/gun/slot/count {gun:"ultimaterainbowrocketlauncher"}
