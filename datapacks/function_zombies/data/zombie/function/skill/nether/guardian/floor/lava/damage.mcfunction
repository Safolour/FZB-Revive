
execute at @s run tp @s ~ ~0.5 ~
#effect give @s levitation 1 0 true
function zombie:skill/nether/guardian/floor/lava/motion
execute if entity @s[scores={zombie.nether.lava.damage_timer=1..}] run return fail

scoreboard players add @s zombie.nether.lava.damage_count 1
scoreboard players set @s zombie.nether.lava.damage_resettimer 100

scoreboard players set @s zombie.nether.lava.damage_timer 10

particle flame ~ ~1 ~ 0 0 0 0.1 3 force @a[scores={particle=0}]

execute if score @s zombie.nether.lava.damage_count matches 1 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.1 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 2 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.2 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 3 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.3 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 4 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.4 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 5 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.5 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 6 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.6 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 7 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.7 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 8 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.8 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 9 store result storage zombie skill.damage double 0.1 run scoreboard players get lava.9 zombie.skill.damage
execute if score @s zombie.nether.lava.damage_count matches 10.. store result storage zombie skill.damage double 0.1 run scoreboard players get lava.10 zombie.skill.damage

function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.lava",color:red}]
