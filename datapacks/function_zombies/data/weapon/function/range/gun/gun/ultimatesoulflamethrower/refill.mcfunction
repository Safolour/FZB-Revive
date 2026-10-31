title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_ultimatesoulflamethrower_clip_ammo = clip_ammo weapon.gun_ultimatesoulflamethrower
execute if score @s weapon.gun_ultimatesoulflamethrower_ammo >= clip_ammo weapon.gun_ultimatesoulflamethrower run function weapon:range/gun/slot/count {gun:"ultimatesoulflamethrower"}
execute if score @s weapon.gun_ultimatesoulflamethrower_ammo >= clip_ammo weapon.gun_ultimatesoulflamethrower run return fail
scoreboard players operation @s weapon.gun_ultimatesoulflamethrower_clip_ammo = @s weapon.gun_ultimatesoulflamethrower_ammo
function weapon:range/gun/slot/count {gun:"ultimatesoulflamethrower"}
