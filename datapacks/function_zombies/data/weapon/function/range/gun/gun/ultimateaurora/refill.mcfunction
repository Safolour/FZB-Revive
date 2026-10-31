title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimateaurora_clip_ammo = clip_ammo weapon.gun_ultimateaurora
execute if score @s weapon.gun_ultimateaurora_ammo >= clip_ammo weapon.gun_ultimateaurora run function weapon:range/gun/slot/count {gun:"ultimateaurora"}
execute if score @s weapon.gun_ultimateaurora_ammo >= clip_ammo weapon.gun_ultimateaurora run return fail
scoreboard players operation @s weapon.gun_ultimateaurora_clip_ammo = @s weapon.gun_ultimateaurora_ammo
function weapon:range/gun/slot/count {gun:"ultimateaurora"}
