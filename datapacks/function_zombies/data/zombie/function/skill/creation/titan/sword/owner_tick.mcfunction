scoreboard players operation #owner origin.owner = @s origin.owner
scoreboard players set #titan.sword.alive titan.cfg 0
execute as @e[type=zombie,tag=skill.titan,scores={zombie.health=1..}] if score @s origin.owner = #owner origin.owner run scoreboard players set #titan.sword.alive titan.cfg 1
execute if score #titan.sword.alive titan.cfg matches 0 run return run function zombie:skill/creation/titan/sword/cleanup
function zombie:skill/creation/titan/sword/projectile_tick
