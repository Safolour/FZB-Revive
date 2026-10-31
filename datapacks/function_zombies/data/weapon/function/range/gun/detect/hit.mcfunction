
execute if score no_target weapon.range matches 1.. run return fail
#tellraw @a [{score:{name:range,objective:weapon.range}}]
#particle explosion ~ ~ ~
execute as @e[tag=hitable] run function weapon:range/gun/detect/hit1