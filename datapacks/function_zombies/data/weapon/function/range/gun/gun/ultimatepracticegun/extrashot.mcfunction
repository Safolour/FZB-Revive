
#execute unless items entity @s weapon *[custom_data~{tag:["ultimatepracticegun"]}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepracticegun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepracticegun_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimatepracticegun_ammo 1
scoreboard players remove @s weapon.gun_ultimatepracticegun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatepracticegun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatepracticegun"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepracticegun
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepracticegun/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=1..,weapon.gun_ultimatepracticegun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepracticegun/reload
execute if entity @s[scores={weapon.gun_ultimatepracticegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatepracticegun"}
return 1