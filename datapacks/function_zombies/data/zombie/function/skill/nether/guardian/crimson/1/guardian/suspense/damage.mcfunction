
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=1}]

execute store result storage zombie skill.damage double 0.1 run scoreboard players get crimsonguardian.suspenselaser1 zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.suspenseguardian",color:"#ffbe59"}]
