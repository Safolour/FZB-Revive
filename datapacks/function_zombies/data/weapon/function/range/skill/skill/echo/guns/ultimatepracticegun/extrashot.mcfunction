execute if score @s weapon.gun_ultimatepracticegun_ammo matches ..0 run return 0

#execute unless items entity @s weapon *[custom_data~{tag:["ultimatepracticegun"]}] run return fail
execute if entity @s[scores={weapon.gun_echo_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimatepracticegun_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatepracticegun/xp_lv
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepracticegun
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepracticegun/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/ultimatepracticegun/reload
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"echo"}
return 1
