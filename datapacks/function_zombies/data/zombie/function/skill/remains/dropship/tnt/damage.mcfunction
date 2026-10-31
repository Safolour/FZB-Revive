effect give @s slowness 1 9 false
effect give @s slowness 2 8 false
effect give @s slowness 3 7 false
effect give @s slowness 4 6 false
effect give @s slowness 5 5 false
effect give @s slowness 6 4 false
effect give @s slowness 7 3 false
effect give @s slowness 8 2 false
effect give @s slowness 9 1 false
effect give @s slowness 10 0 false
effect give @s blindness 1 0 true

execute anchored eyes run particle flash ~ ~1 ~0.5 0 0 0 0 10 force @s[scores={particle=0}]
execute anchored eyes run particle flash ~ ~1 ~1 0 0 0 0 10 force @s[scores={particle=0}]

execute store result storage zombie skill.damage double 0.1 run scoreboard players get dropship.tnt zombie.skill.damage
function zombie:skill/chaos/chaos_golem/skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{"translate":"zb.zombie.name.remains.dropship","color":"red"},{"translate":"zb.zombie.name.remains.dropship.tnt","color":"red"}]}]
