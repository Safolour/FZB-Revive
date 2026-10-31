
execute store result storage zombie skill.damage double 0.1 run scoreboard players get rainbowzombie.rocketlauncher1 zombie.skill.damage
function zombie:skill/rainbow/rocketlauncher/knockdamage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.using",with:[{translate:zb.zombie.name.rainbowzombie},{translate:zb.zombie.name.rainbowrocketlauncher}]}]
