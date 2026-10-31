scoreboard players remove @s weapon.gun_oxidizedcoppergun_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/oxidizedcoppergun/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_oxidizedcoppergun
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_oxidizedcoppergun
playsound block.bell.use player @a ~ ~ ~ 1.5 0 0
playsound item.trident.thunder player @a ~ ~ ~ 1.5 0 0
playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1.5 0 0
playsound entity.horse.gallop player @a ~ ~ ~ 1 0 0
playsound entity.generic.explode player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/oxidizedcoppergun/summon0
scoreboard players set @s weapon.use 0

#scoreboard players add shoot test 1
