
effect give @s levitation 1 0 true
data modify entity @s active_effects[{id:"minecraft:levitation"}].duration set value 8
scoreboard players operation punch weapon.state = wave_punch weapon.gun_ultimateairgun

function weapon:range/gun/damage/punch