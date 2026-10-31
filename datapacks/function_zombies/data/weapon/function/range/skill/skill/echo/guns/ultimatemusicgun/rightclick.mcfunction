execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=0}] run scoreboard players set @s weapon.gun_echo_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/ultimatemusicgun/reload
execute if entity @s[scores={weapon.gun_echo_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_echo_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..}] run function weapon:range/skill/skill/echo/guns/ultimatemusicgun/summon
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/ultimatemusicgun/reload
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"echo"}
