function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/sync
execute if score @s weapon.gun_echo_reload matches 0.. run function weapon:range/gun/slot/reload {gun:"echo"}
execute if score @s weapon.gun_echo_reload matches 0 run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/refill
execute if score @s weapon.gun_echo_clip_ammo matches 0 if score @s weapon.gun_echo_reload matches ..-1 if score @s weapon.gun_ultimatedoubleshotguniii_ammo matches 1.. run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/reload
execute unless items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"ultimatedoubleshotguniii"}] run return 0
scoreboard players set @s weapon.gun_hold 19000
execute if score @s weapon.gun_echo_rate matches 0.. if score @s weapon.gun_echo_reload matches -1 run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/xp_point
execute if score @s weapon.gun_echo_rate matches ..0 run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/xp_lv
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/skill/skill/echo/guns/ultimatedoubleshotguniii/leftclick
execute if score @s weapon.gun_echo_reload matches 1.. run function weapon:range/gun/message/reloading
execute if score @s weapon.gun_ultimatedoubleshotguniii_ammo matches 0 run function weapon:range/gun/message/outofammo
