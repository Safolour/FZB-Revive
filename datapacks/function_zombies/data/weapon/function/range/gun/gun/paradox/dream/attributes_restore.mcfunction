execute if score @s weapon.pd_gravity = @s weapon.pd_gravity store result storage weapon paradox.attrs.gravity double 0.000001 run scoreboard players get @s weapon.pd_gravity
execute unless score @s weapon.pd_gravity = @s weapon.pd_gravity run data modify storage weapon paradox.attrs.gravity set value 0.08d
execute if score @s weapon.pd_jump = @s weapon.pd_jump store result storage weapon paradox.attrs.jump double 0.000001 run scoreboard players get @s weapon.pd_jump
execute unless score @s weapon.pd_jump = @s weapon.pd_jump run data modify storage weapon paradox.attrs.jump set value 0.42d
execute if score @s weapon.pd_fall = @s weapon.pd_fall store result storage weapon paradox.attrs.fall double 0.001 run scoreboard players get @s weapon.pd_fall
execute unless score @s weapon.pd_fall = @s weapon.pd_fall run data modify storage weapon paradox.attrs.fall set value 3.0d
function weapon:range/gun/gun/paradox/dream/attributes_restore0 with storage weapon paradox.attrs
