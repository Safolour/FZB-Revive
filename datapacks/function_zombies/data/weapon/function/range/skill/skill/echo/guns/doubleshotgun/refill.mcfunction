title @s actionbar [{text:""}]
scoreboard players operation @s weapon.gun_echo_clip_ammo = clip_ammo weapon.gun_doubleshotgun
execute if score @s weapon.gun_doubleshotgun_ammo >= clip_ammo weapon.gun_doubleshotgun run function weapon:range/skill/skill/echo/count
execute if score @s weapon.gun_doubleshotgun_ammo >= clip_ammo weapon.gun_doubleshotgun run return fail
scoreboard players operation @s weapon.gun_echo_clip_ammo = @s weapon.gun_doubleshotgun_ammo
function weapon:range/skill/skill/echo/count
