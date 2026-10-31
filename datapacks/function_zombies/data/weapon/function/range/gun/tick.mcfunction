scoreboard players set @s weapon.gun_hold 1
execute unless score @s weapon.gun_noammo_cd matches ..-1 run scoreboard players remove @s weapon.gun_noammo_cd 1
function weapon:range/gun/tick_gun
function weapon:range/skill/skill/echo/tick
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/operation

execute unless score @s weapon.gun_hold = @s weapon.gun_hold0 run function weapon:range/gun/switch

scoreboard players set @s weapon.gun_hold 0
