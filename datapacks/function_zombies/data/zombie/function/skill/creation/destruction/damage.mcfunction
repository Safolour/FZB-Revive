
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound entity.player.hurt record @a ~ ~ ~ 1.5 0
effect give @s slowness 2 0 false
effect give @s blindness 1 0 true

execute store result storage zombie skill.damage double 0.1 run scoreboard players get creation.destruction.explosion zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.destruction}]

tellraw @s {"translate":"zb.zombie.destruction",color:yellow,italic:false,with:[{"translate":"zb.zombie.name.creation.destruction"}]}
