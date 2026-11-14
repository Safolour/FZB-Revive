# ClearAura 09/30: flames and enchanted hits are centered on the outgoing boss before the lines.
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force @a[scores={system.room=4..,particle=0}]
particle minecraft:enchanted_hit ~ ~ ~ 1 3 1 0.5 2 force @a[scores={system.room=4..,particle=0}]
summon marker ~ 92 ~ {Tags:["origin.combat_fx","origin.phase.burst","origin.phase.burst.new"]}
scoreboard players operation @e[type=marker,tag=origin.phase.burst.new,sort=nearest,limit=1,distance=..2] origin.owner = #owner origin.owner
tag @e[type=marker,tag=origin.phase.burst.new,distance=..2] remove origin.phase.burst.new
