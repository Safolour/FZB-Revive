scoreboard players operation #sky_owner weapon.pd_owner = @s uuid
execute as @e[type=item_display,tag=paradox.sky] if score @s weapon.pd_owner = #sky_owner weapon.pd_owner run kill @s
