
execute if entity @s[scores={interaction.state=1..}] at @s run function interaction:tick0

function zombie:tick1
function system:tick0_0

execute if entity @s[scores={inventory=1..}] run function inventory:tick

execute unless score @s system.room = @s system.room run function mainlobby:tp_lobby
function elemental_effect:tick0
function map:tick0
execute unless score @s particle = @s particle run scoreboard players set @s particle 0


scoreboard players set @s weapon.melee.block 0
scoreboard players set @s interaction.left_click 0
scoreboard players set @s interaction.right_click 0
tag @s[tag=chosen] remove chosen

tag @s remove repairable
tag @s remove way_point_target