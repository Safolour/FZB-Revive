execute if entity @s[tag=firelord.p4.minion] if entity @e[type=stray,tag=firelord.p4.commander,scores={zombie.health=1..}] at @s run return run function zombie:skill/nether/firelord/p2/mob_hit

execute if entity @s[tag=firelord.p2.ghast] run return run function zombie:skill/nether/firelord/p2/ghast/hit
function zombie:summon
execute if entity @s[tag=firelord.p2.apostle,tag=!firelord.p2.unlocked] at @s run return run function zombie:skill/nether/firelord/p2/mob_hit
execute if entity @s[type=marker,tag=skill.creation.rampart.shield] run return run function zombie:skill/creation/rampart/shieldtakedamage

execute if entity @s[tag=firezb] run function map:area/lab/reaction/fire/attribute_mob_add_by_player
execute unless score @s zombie.critical_extra = @s zombie.critical_extra run scoreboard players set @s zombie.critical_extra 100

# 命中率按子弹算：一发子弹（霰弹每颗）不管打到几个敌人（连锁、溅射、穿透）只算一次命中、最多一次爆头
# #hit_counted / #head_counted 在每发子弹开始时清零（即时子弹 loop/0，投射物每 tick 的 loop/1）
execute unless entity @s[tag=p5.raytarget] unless score #hit_counted weapon.state matches 1 run scoreboard players add @p[scores={weapon.use=1..}] weapon.gun_hit 1
execute unless entity @s[tag=p5.raytarget] run scoreboard players set #hit_counted weapon.state 1
execute unless entity @s[tag=p5.raytarget] unless score #head_counted weapon.state matches 1 if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players add @p[scores={weapon.use=1..}] weapon.gun_headshot 1
execute unless entity @s[tag=p5.raytarget] if entity @p[scores={weapon.use=1..},tag=crit_hit] run scoreboard players set #head_counted weapon.state 1
execute if entity @p[scores={perk.frozen_bullet=1}] run scoreboard players operation @s perk.frozen_bullet_time = default perk.frozen_bullet

execute as @p[scores={weapon.use=1..}] run function weapon:range/gun/damage/player

function mainlobby:setting/powerup/select_attack
execute if score #instakill setting.pu matches 1.. if entity @s[tag=!cantinstakill] if score gold weapon.state matches 0.. run scoreboard players operation gold weapon.state = instakill_gold weapon.state
execute if score #doublegold setting.pu matches 1.. if score gold weapon.state matches 0.. run scoreboard players operation gold weapon.state *= 2 number
execute if score #triplegold setting.pu matches 1.. if score gold weapon.state matches 0.. run scoreboard players operation gold weapon.state *= 3 number
execute if score #quadruplegold setting.pu matches 1.. if score gold weapon.state matches 0.. run scoreboard players operation gold weapon.state *= 4 number
execute if entity @p[scores={weapon.use=1..,perk.gold_thrower=1}] if score gold weapon.state matches 1.. run function map:perk/gold_thrower/gold_cut

execute unless entity @s[tag=nogold] as @p[scores={weapon.use=1..}] run function weapon:range/gun/damage/gold

execute as @s at @s if entity @e[tag=chosen] run function weapon:range/gun/damage/punch
effect give @s[type=!player] resistance 1 4 true
damage @s[type=!player] 1 generic_kill
effect clear @s[type=!player] resistance
scoreboard players set damage_extra weapon.state 100
# RSN 按半格计步：每 2 步 +2.5% 基础伤害，100 格共 +250%
execute if score gun weapon.use matches 10077..10080 run scoreboard players operation #rsn_distance_bonus weapon.state = range weapon.range
execute if score gun weapon.use matches 10077..10080 run scoreboard players operation #rsn_distance_bonus weapon.state *= 5 number
execute if score gun weapon.use matches 10077..10080 run scoreboard players operation #rsn_distance_bonus weapon.state /= 4 number
execute if score gun weapon.use matches 10077..10080 run scoreboard players operation damage_extra weapon.state += #rsn_distance_bonus weapon.state
scoreboard players operation damage_extra weapon.state += @p[scores={weapon.use=1..}] weapon.gun_damage_extra
function map:perk/hit/damage_extra
scoreboard players operation damage0 weapon.state = damage weapon.state
function map:perk/hit/base
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
function map:perk/hit/after
scoreboard players operation @s zombie.health -= damage0 weapon.state
function mainlobby:setting/powerup/select_attack
execute if score #instakill setting.pu matches 1.. run scoreboard players set @s[tag=!cantinstakill] zombie.health 0
function zombie:take_damage0
execute unless entity @s[tag=p5.raytarget] run function map:perk/hit/post
execute if entity @s[scores={zombie.health=1..}] run return fail
execute as @p[scores={weapon.use=1..}] run loot replace block 1 -60 1 container.0 loot weapon:playerhead
data modify entity @s data.killed set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
execute unless entity @s[tag=p5.raytarget] run scoreboard players add @p[scores={weapon.use=1..}] zombie.kill 1
execute unless entity @s[tag=p5.raytarget] if entity @p[scores={weapon.use=1..,perk.gold_thrower=1}] run function map:perk/gold_thrower/drop
execute if entity @s[scores={zombie.health=..0}] run function zombie:death
