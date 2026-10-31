
scoreboard players set hit stat.attack.range 1
function zombie:summon
execute if entity @p[scores={weapon.use=1..,perk.frozen_bullet=1}] run scoreboard players operation @s perk.frozen_bullet_time = default perk.frozen_bullet
execute unless entity @s[tag=cantpuncher] run function player_stat:attack/punch
execute if score timer powerup.timer.instakill matches 1.. if entity @s[tag=!cantinstakill] run scoreboard players operation gold stat.attack = instakill_gold stat.attack
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold stat.attack *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold stat.attack *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold stat.attack *= 4 number

execute unless entity @s[tag=nogold] as @p[scores={weapon.use=1..}] if items entity @s weapon *[custom_data~{tag:["gold"]}] run function player_stat:attack/gold

effect give @s[type=!player] resistance 1 4 true
damage @s[type=!player] 1 arrow by @p[scores={weapon.use=1..}]
effect clear @s[type=!player] resistance

scoreboard players operation damage0 stat.attack = damage stat.attack
scoreboard players operation armor stat.attack = @s zombie.armor
scoreboard players operation armor stat.attack -= 100 number
scoreboard players operation armor stat.attack *= -1 number
scoreboard players operation damage0 stat.attack *= armor stat.attack
scoreboard players operation damage0 stat.attack /= 100 number
# 增益（金钱丢失 -10%×玩家数、伤害吸收转化）的伤害倍率，算法同枪
scoreboard players set damage_extra weapon.state 100
function map:perk/hit/damage_extra
scoreboard players operation damage0 stat.attack *= damage_extra weapon.state
scoreboard players operation damage0 stat.attack /= 100 number

scoreboard players set smite stat.attack 0
execute if entity @s[type=#zombie:undead] as @p[scores={weapon.use=1..}] if items entity @s weapon *[custom_data~{tag:["smite"]}] store result score smite stat.attack run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:smite"
execute if entity @s[type=#zombie:undead] run scoreboard players operation smite stat.attack *= 25 number
scoreboard players operation damage0 stat.attack += smite stat.attack

scoreboard players operation @s zombie.health -= damage0 stat.attack

execute if score timer powerup.timer.instakill matches 1.. run scoreboard players set @s[tag=!cantinstakill] zombie.health 0

execute if entity @s[scores={zombie.health=1..}] run return fail
execute as @p[scores={weapon.use=1..}] run loot replace block 1 -60 1 container.0 loot weapon:playerhead
data modify entity @s data.killed set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
scoreboard players add @p[scores={weapon.use=1..}] zombie.kill 1