title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_resonance_clip_ammo = clip_ammo weapon.gun_resonance
execute if score @s weapon.gun_resonance_ammo >= clip_ammo weapon.gun_resonance run function weapon:range/gun/slot/count {gun:"resonance"}
execute if score @s weapon.gun_resonance_ammo >= clip_ammo weapon.gun_resonance run return fail
scoreboard players operation @s weapon.gun_resonance_clip_ammo = @s weapon.gun_resonance_ammo
function weapon:range/gun/slot/count {gun:"resonance"}
