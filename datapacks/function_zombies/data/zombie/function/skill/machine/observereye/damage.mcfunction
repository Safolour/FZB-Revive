scoreboard players reset @s zombie.observereye.damage

particle lava ~ ~1 ~ 0 0 0 0 2 force @a[scores={particle=0}]
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1

execute store result storage zombie skill.damage double 0.1 run scoreboard players get observereye zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.observereye"}]
