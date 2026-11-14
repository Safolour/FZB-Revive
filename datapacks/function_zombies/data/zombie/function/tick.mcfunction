execute if entity @s[tag=paradox.captive] unless function weapon:range/gun/gun/paradox/captive/guard run return 0

execute if entity @s[tag=setting.dummy] run return run function mainlobby:setting/dummy/mob_tick
function zombie:summon
execute if entity @s[tag=origin.intro] at @s run function zombie:skill/creation/origin/intro
execute if entity @s[tag=skill.origin,tag=origin.transition,tag=origin.p3.return] at @s run function zombie:skill/creation/titan/transition/tick
execute if entity @s[tag=skill.origin,tag=origin.transition,tag=!origin.p3.return] at @s run function zombie:skill/creation/origin/transition/tick
execute if entity @s[tag=skill.origin,tag=!origin.p2,tag=!origin.p3,tag=!origin.transition,scores={zombie.health=..75000}] at @s run function zombie:skill/creation/origin/phase
execute if entity @s[tag=skill.origin,tag=!origin.intro,tag=!origin.p2,tag=!origin.p3,tag=!origin.transition,scores={zombie.health=1..}] at @s run function zombie:skill/creation/origin/p1_tick
execute if entity @s[tag=skill.origin,tag=origin.p3,tag=!origin.transition,scores={zombie.health=1..}] at @s run function zombie:skill/creation/origin/p1_tick
function zombie:speed
function zombie:motion
execute if score @s zombie.health > @s zombie.max_health run scoreboard players operation @s zombie.health = @s zombie.max_health
execute if entity @s[tag=skill.firelord.shield] run scoreboard players operation @s zombie.health = @s zombie.health0
# The apostle's shield must restore even lethal scoreboard damage before death runs.
execute if entity @s[tag=firelord.p2.apostle,tag=!firelord.p2.unlocked] run scoreboard players operation @s zombie.health = @s zombie.health0
# Fire Lord and Origin stage thresholds must be processed before a lethal score can invoke death.
execute if entity @s[tag=skill.firelord] at @s run function zombie:skill/nether/firelord/phase_lock
execute if entity @s[tag=skill.origin] at @s run function zombie:skill/creation/origin/lightning/lock_health
execute if entity @s[tag=skill.titan] run function zombie:skill/creation/titan/lock_health
execute if entity @s[tag=skill.titan,tag=!titan.eclipse.used,scores={zombie.health=..37500}] at @s run function zombie:skill/creation/titan/phase_lock
execute if entity @s[tag=firelord.p4.minion] if entity @e[type=stray,tag=firelord.p4.commander,scores={zombie.health=1..}] run scoreboard players operation @s zombie.health = @s zombie.health0
execute as @s at @s if score @s zombie.health matches ..0 run function zombie:death

function zombie:take_damage
function zombie:skill/tick

execute if entity @s[tag=bossbar] at @s run function zombie:bossbar/tick

execute unless entity @e[tag=badheadshot] run tag @s add badheadshot

return fail
tag @s add chosen
execute as @e[tag=mob,tag=!chosen,tag=!pathfinding] if score @s zombie.uuid = @n[tag=chosen] zombie.uuid run tellraw XMM010 [{text:"has same"}]
tag @s remove chosen
