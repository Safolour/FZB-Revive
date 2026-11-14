
execute unless score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust{color:[1,0,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=1}]

execute store result storage zombie skill.damage double 0.1 run scoreboard players get crimsonguardian.suspenselaser zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.suspenseguardian",color:"#ffbe59"}]
