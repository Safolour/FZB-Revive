execute store result storage weapon paradox.mark.owner int 1 run scoreboard players get @p[scores={weapon.use=10081}] uuid
data modify storage weapon paradox.mark.target set from entity @s UUID
function weapon:range/gun/gun/paradox/mark/create with storage weapon paradox.mark
