
execute unless score @s gun.particle = @s gun.particle run scoreboard players operation @s gun.particle = @s particle
execute unless score @s gun.particle = @s gun.particle run scoreboard players set @s gun.particle 0
execute unless score @s setting = @s setting run scoreboard players set @s setting 0
execute unless score @s setting.action = @s setting.action run scoreboard players set @s setting.action 0
scoreboard players enable @s setting
scoreboard players enable @s setting.action
execute unless score @s setting matches 0 run function system:setting/open
execute unless score @s setting.action matches 0 run function system:setting/action

scoreboard players enable @s nightvision
scoreboard players enable @s particle
scoreboard players enable @s quit

execute if score @s nightvision matches 1 run effect give @s night_vision 30 0 true


scoreboard players set @s system.actionbar 447010000

function system:uuid
execute unless score @s system.freeze0 = @s system.freeze run function system:game_freeze
execute unless score @s particle0 = @s particle run function system:trigger/particle
execute unless score @s nightvision0 = @s nightvision run function system:trigger/nightvision
execute unless score @s quit matches 0 run function system:trigger/quit
function mainlobby:spectator/tick
tag @s[scores={system.room=4}] add repairable
scoreboard players set @s window0 0
tag @s add way_point_target

scoreboard players operation uuid uuid = @s uuid
scoreboard players set @e[tag=precedence] precedence 0
execute as @e[tag=precedence,tag=!opened,distance=..5] run function system:tick2_0
