execute if entity @s[tag=firelord.p4.minion] if entity @e[type=stray,tag=firelord.p4.commander,scores={zombie.health=1..}] at @s run return run function zombie:skill/nether/firelord/p2/mob_hit

execute if entity @s[tag=firelord.p2.ghast] run return run function zombie:skill/nether/firelord/p2/ghast/hit
function zombie:summon
execute if entity @s[tag=firelord.p2.apostle,tag=!firelord.p2.unlocked] at @s run return run function zombie:skill/nether/firelord/p2/mob_hit
execute if entity @s[type=marker,tag=skill.creation.rampart.shield] run return run function zombie:skill/creation/rampart/shieldtakedamage

execute if entity @s[tag=firezb] run function map:area/lab/reaction/fire/attribute_mob_add_by_player
execute unless score @s zombie.critical_extra = @s zombie.critical_extra run scoreboard players set @s zombie.critical_extra 100

execute if entity @p[scores={perk.frozen_bullet=1}] run scoreboard players operation @s perk.frozen_bullet_time = default perk.frozen_bullet

function mainlobby:setting/powerup/select_attack
execute if score #instakill setting.pu matches 1.. if entity @s[tag=!cantinstakill] run scoreboard players operation gold weapon.state = instakill_gold weapon.state
execute if score #doublegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 2 number
execute if score #triplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 3 number
execute if score #quadruplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 4 number


effect give @s[type=!player] resistance 1 4 true
damage @s[type=!player] 1 generic_kill
effect clear @s[type=!player] resistance
scoreboard players set damage_extra weapon.state 100
scoreboard players operation damage_extra weapon.state += @p[scores={weapon.use=1..}] weapon.gun_damage_extra
function map:perk/hit/damage_extra
scoreboard players operation damage0 weapon.state = damage weapon.state
scoreboard players operation armor weapon.state = @s zombie.armor
scoreboard players operation armor weapon.state -= 100 number
scoreboard players operation armor weapon.state *= -1 number
scoreboard players operation damage0 weapon.state *= armor weapon.state
scoreboard players operation damage0 weapon.state /= 100 number
scoreboard players operation damage0 weapon.state *= damage_extra weapon.state
scoreboard players operation damage0 weapon.state /= 100 number
execute if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players operation damage0 weapon.state *= @s zombie.critical_extra
execute if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players operation damage0 weapon.state /= 100 number
execute if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players operation damage0 weapon.state *= critical_extra weapon.state
execute if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players operation damage0 weapon.state /= 100 number
scoreboard players operation @s zombie.health -= damage0 weapon.state
#tellraw @a [{score:{name:damage0,objective:weapon.state}}]
function mainlobby:setting/powerup/select_attack
execute if score #instakill setting.pu matches 1.. run scoreboard players set @s[tag=!cantinstakill] zombie.health 0
function zombie:take_damage0

execute if entity @s[scores={zombie.health=1..}] run return fail
execute as @p[scores={weapon.use=1..}] run loot replace block 1 -60 1 container.0 loot weapon:playerhead
data modify entity @s data.killed set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
execute unless entity @s[tag=p5.raytarget] run scoreboard players add @p[scores={weapon.use=1..}] zombie.kill 1
execute if entity @s[scores={zombie.health=..0}] run function zombie:death
