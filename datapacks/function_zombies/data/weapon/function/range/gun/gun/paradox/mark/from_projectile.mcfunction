execute store result storage weapon paradox.mark.owner int 1 run scoreboard players get @a[tag=paradox.shooter,limit=1] uuid
data modify storage weapon paradox.mark.target set from entity @s UUID
function weapon:range/gun/gun/paradox/mark/create with storage weapon paradox.mark
