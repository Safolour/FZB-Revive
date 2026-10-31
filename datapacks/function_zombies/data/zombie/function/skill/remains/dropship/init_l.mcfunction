execute unless entity @e[type=marker,tag=skill.dropship.point] run function zombie:skill/remains/dropship/point/spawn

tag @s add skill.dropship.fly

#execute store result score random zombie.random run random value 0..1
#execute if score random zombie.random matches 0 run tag @s add skill.dropship.positive
#execute if score random zombie.random matches 1 run tag @s add skill.dropship.negative
#execute if score random zombie.random matches 0 run scoreboard players set @s zombie.remains.dropship -1
#execute if score random zombie.random matches 1 run scoreboard players set @s zombie.remains.dropship 12
#scoreboard players reset random zombie.random

tag @s add skill.dropship.positive
scoreboard players set @s zombie.remains.dropship -1


function zombie:skill/remains/dropship/fly/facing
function zombie:skill/remains/dropship/tnt/spawn


summon lightning_bolt 300 110 120
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.remains.dropship"}],color:red}
