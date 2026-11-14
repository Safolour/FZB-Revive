
#function map:area/lab/reaction/fire/effect/extra/burn
function zombie:skill/nether/reaction/mob/spirit

execute store result storage zombie skill.damage double 0.1 run scoreboard players get spiritskeleton zombie.skill.damage
attribute @s minecraft:knockback_resistance modifier add zombie:spirit_skeleton_hit 1 add_value
function zombie:skill/damage0 with storage zombie skill
attribute @s minecraft:knockback_resistance modifier remove zombie:spirit_skeleton_hit
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.spirit.spiritskeleton,color:"#d9fcff"}]
