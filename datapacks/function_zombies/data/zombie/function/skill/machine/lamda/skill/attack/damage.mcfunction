effect give @s slowness 3 2 false
effect give @s blindness 1 0 true
playsound entity.player.hurt record @a ~ ~ ~ 2 0
playsound block.anvil.land record @a ~ ~ ~ 2 1.5
particle explosion ~ ~1 ~ 0 0 0 0 2 force @a[scores={particle=0..1}]
particle large_smoke ~ ~1 ~ 0 0 0 0.2 10 force @a[scores={particle=0}]

function zombie:skill/machine/lamda/skill/attack/motion

execute store result storage zombie skill.damage double 0.1 run scoreboard players get lamda.attack zombie.skill.damage
function zombie:skill/machine/lamda/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.lamda}]
