execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_season_spring_ammo=0}] run scoreboard players set @s weapon.gun_echo_clip_ammo 0
execute if entity @s[scores={weapon.gun_season_spring_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/season_spring/reload
execute if entity @s[scores={weapon.gun_echo_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_echo_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_season_spring_ammo=1..}] run function weapon:range/skill/skill/echo/guns/season_spring/summon
execute if entity @s[scores={weapon.gun_season_spring_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/season_spring/reload
execute if entity @s[scores={weapon.gun_season_spring_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"echo"}
