function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/sync
execute if score @s weapon.gun_echo_reload matches 0.. run function weapon:range/gun/slot/reload {gun:"echo"}
execute if score @s weapon.gun_echo_reload matches 0 run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/refill
execute if score @s weapon.gun_echo_clip_ammo matches 0 if score @s weapon.gun_echo_reload matches ..-1 if score @s weapon.gun_ultimaterainbowshotgunii_ammo matches 1.. run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/reload
execute unless items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"ultimaterainbowshotgunii"}] run return 0
scoreboard players set @s weapon.gun_hold 19000
execute if score @s weapon.gun_echo_rate matches 0.. if score @s weapon.gun_echo_reload matches -1 run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/xp_point
execute if score @s weapon.gun_echo_rate matches ..0 run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/xp_lv
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/skill/skill/echo/guns/ultimaterainbowshotgunii/leftclick
execute if score @s weapon.gun_echo_reload matches 1.. run function weapon:range/gun/message/reloading
execute if score @s weapon.gun_ultimaterainbowshotgunii_ammo matches 0 run function weapon:range/gun/message/outofammo
