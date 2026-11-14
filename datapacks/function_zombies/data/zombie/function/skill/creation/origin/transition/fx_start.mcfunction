summon marker ~ ~ ~ {Tags:["origin.combat_fx","origin.phase.fx","origin.phase.anchor.new"]}
scoreboard players operation @e[type=marker,tag=origin.phase.anchor.new,sort=nearest,limit=1,distance=..1] origin.owner = #owner origin.owner
tag @e[type=marker,tag=origin.phase.anchor.new,sort=nearest,limit=1,distance=..1] add origin.phase.anchor
tag @e[type=marker,tag=origin.phase.anchor.new] remove origin.phase.anchor.new
