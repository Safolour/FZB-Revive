execute store result storage zombie skill.damage double 0.1 run scoreboard players get blaze.fire zombie.skill.damage

execute if score stat zombie.nether.guardian matches 1.. run execute store result storage zombie skill.damage double 0.1 run scoreboard players get blaze.fire.boss zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.remains.blaze,color:yellow}]
