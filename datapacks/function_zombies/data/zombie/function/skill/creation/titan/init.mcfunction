tag @s add titan.ready
scoreboard players set @s titan.age 0
# Sword/scatter are rolled independently once per ordinary teleport.
scoreboard players set @s titan.light_cd 390
function zombie:skill/creation/titan/teleport/init
function zombie:skill/creation/titan/melee/init
# Ordinary damage is now a separate immediate skill; widened melee remains independent.
data merge entity @s {Glowing:1b}
team join titan.red @s
scoreboard players set @s titan.tp_glow 7
attribute @s minecraft:movement_speed modifier remove titan:arrival_slow
attribute @s minecraft:movement_speed modifier add titan:arrival_slow -0.15 add_multiplied_total
