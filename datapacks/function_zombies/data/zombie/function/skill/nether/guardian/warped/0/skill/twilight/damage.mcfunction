
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=1}]

effect give @s slowness 2 1 false

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardian.twilightlaser zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.twilight,color:aqua}]
