execute if entity @s[tag=titan.sword.cast] run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
function zombie:skill/creation/titan/teleport/glow_clear
tag @s add titan.sword.cast
scoreboard players set @s titan.sword_age 0
# 09/30 and 10/20: aqua charge, a normal diamond sword, Slowness I; Titan keeps walking.
execute unless entity @s[tag=titan.scatter.cast] run team join titan.aqua @s
data merge entity @s {Glowing:1b}
item replace entity @s weapon.mainhand with minecraft:diamond_sword[minecraft:attribute_modifiers=[{id:"minecraft:attack_damage",amount:0,type:"minecraft:attack_damage",operation:"add_value"}]]
effect give @s minecraft:slowness 2 0 true
