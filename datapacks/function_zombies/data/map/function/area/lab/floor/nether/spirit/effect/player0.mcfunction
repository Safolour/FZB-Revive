execute at @s run function map:area/lab/floor/nether/warped/effect/particle

playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 1 0

function map:area/lab/reaction/fire/attribute_player_add {type:spirit,source:mob}



execute store result score 0 zombie.random run random value -5..5
execute store result score 1 zombie.random run random value -5..5

execute store result storage map 0 int 1 run scoreboard players get 0 zombie.random
execute store result storage map 1 int 1 run scoreboard players get 1 zombie.random

execute at @s run function map:area/lab/floor/nether/spirit/effect/rotate with storage map

scoreboard players reset 0 zombie.random
scoreboard players reset 1 zombie.random
data remove storage map 0
data remove storage map 1


execute store result storage zombie skill.damage double 0.1 run scoreboard players get area.floor.spirit zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.floor.spirit,color:"#d9fcff"}]
