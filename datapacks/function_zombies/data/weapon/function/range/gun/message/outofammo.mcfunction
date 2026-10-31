
scoreboard players set @s[scores={system.actionbar=2..}] system.actionbar 2
scoreboard players set @s[scores={system.actionbar=1..,revive.revive_target=1..}] system.actionbar 1
title @s[scores={system.actionbar=2}] actionbar [{translate:"zb.item.gun.actionbar.2"}]
execute unless entity @s[scores={weapon.gun_noammo_cd=..0}] run return fail
scoreboard players operation @s weapon.gun_noammo_cd = cd weapon.gun_noammo_cd
tellraw @s [{translate:"zb.item.gun.tellraw.1"}]