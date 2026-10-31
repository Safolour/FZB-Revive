title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_rainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_rainbowrocketlauncher
execute if score @s weapon.gun_rainbowrocketlauncher_ammo >= clip_ammo weapon.gun_rainbowrocketlauncher run function weapon:range/gun/slot/count {gun:"rainbowrocketlauncher"}
execute if score @s weapon.gun_rainbowrocketlauncher_ammo >= clip_ammo weapon.gun_rainbowrocketlauncher run return fail
scoreboard players operation @s weapon.gun_rainbowrocketlauncher_clip_ammo = @s weapon.gun_rainbowrocketlauncher_ammo
function weapon:range/gun/slot/count {gun:"rainbowrocketlauncher"}
