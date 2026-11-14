execute if entity @s[type=player] run return 0
execute if entity @s[tag=paradox.captive] run return 0
execute at @s positioned ~ ~1.2 ~ run function weapon:range/gun/gun/paradox/slash/spawn
execute at @s run function weapon:range/gun/gun/paradox/erosion/particles
scoreboard players operation damage weapon.state = erosion_damage weapon.gun_paradox
scoreboard players set gold weapon.state 100
scoreboard players set punch weapon.state 0
function weapon:range/gun/damage/damage
execute unless entity @s[tag=mob,scores={zombie.health=1..}] run return 0
# Bosses and scripted multipart entities keep their arena constraints.
execute if entity @s[tag=bossbar] run return 0
execute if entity @s[tag=boss] run return 0
execute if entity @s[tag=cantinstakill] run return 0
execute if score @a[tag=paradox.erosion_owner,limit=1] weapon.pd_count matches 30.. run return 0
function weapon:range/gun/gun/paradox/captive/capture
