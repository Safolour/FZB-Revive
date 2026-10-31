execute at @s run function map:area/lab/floor/nether/crimson/effect/particle

playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 1 0

effect give @s wither 3 1 false

function map:area/lab/reaction/fire/attribute_player_add {type:ashes,source:mob}

execute store result storage zombie skill.damage double 0.1 run scoreboard players get area.floor.ashes zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.floor.ashes,color:"#2f4f4f"}]
