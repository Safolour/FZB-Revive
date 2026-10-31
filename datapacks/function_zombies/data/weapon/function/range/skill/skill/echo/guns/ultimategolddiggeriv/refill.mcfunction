title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriv
execute if score @s weapon.gun_ultimategolddiggeriv_ammo >= clip_ammo weapon.gun_ultimategolddiggeriv run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_ultimategolddiggeriv_ammo >= clip_ammo weapon.gun_ultimategolddiggeriv run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_ultimategolddiggeriv_ammo
function weapon:range/skill/skill/echo/count
