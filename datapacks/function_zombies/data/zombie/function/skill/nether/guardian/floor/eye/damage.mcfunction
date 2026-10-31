effect give @s speed 3 1 false
effect give @s blindness 1 0 true

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle lava ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=0}]

playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
playsound entity.player.hurt record @a ~ ~ ~ 1 0

tellraw @s {"translate":"zb.zombie.guardian.eye.tellraw.1"}

execute store result storage zombie skill.damage double 0.1 run scoreboard players get guardianeye zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.guardianeye.0",color:white}]
