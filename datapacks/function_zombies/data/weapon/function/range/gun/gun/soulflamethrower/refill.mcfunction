title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_soulflamethrower_clip_ammo = clip_ammo weapon.gun_soulflamethrower
execute if score @s weapon.gun_soulflamethrower_ammo >= clip_ammo weapon.gun_soulflamethrower run function weapon:range/gun/slot/count {gun:"soulflamethrower"}
execute if score @s weapon.gun_soulflamethrower_ammo >= clip_ammo weapon.gun_soulflamethrower run return fail
scoreboard players operation @s weapon.gun_soulflamethrower_clip_ammo = @s weapon.gun_soulflamethrower_ammo
function weapon:range/gun/slot/count {gun:"soulflamethrower"}
