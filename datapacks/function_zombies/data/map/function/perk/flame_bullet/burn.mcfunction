# 燃烧中的敌人每 tick：每 interval 刻受到 damage 点火焰伤害（火焰类敌人 firezb ×0.5），不看护甲
# 不用原版 damage 做受击动画：generic_kill 不吃抗性，同一 tick 里 zombie:take_damage 会把原版扣的血也算进去
scoreboard players remove @s perk.flame_time 1
execute if score @s perk.flame_time matches 0 run data modify entity @s HasVisualFire set value 0b
scoreboard players operation #t perk = @s perk.flame_time
scoreboard players operation #t perk %= interval perk.flame_bullet
execute unless score #t perk matches 0 run return fail
execute unless entity @s[scores={zombie.health=1..}] run return fail

scoreboard players operation #damage perk = damage perk.flame_bullet
execute if entity @s[tag=firezb] run scoreboard players operation #damage perk /= 2 number
execute if score #atk fzb.attr matches 20..180 run scoreboard players operation #damage perk *= #atk fzb.attr
execute if score #atk fzb.attr matches 20..180 run scoreboard players operation #damage perk /= 100 number
scoreboard players operation @s zombie.health -= #damage perk
execute unless score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0.25 0.5 0.25 0.02 5
execute if score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0.25 0.5 0.25 0.02 5 normal @a[scores={particle=0}]
execute if score round game.state matches 40 run execute at @s run particle flame ~ ~1 ~ 0.25 0.5 0.25 0.02 2 normal @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run execute at @s run particle flame ~ ~1 ~ 0.25 0.5 0.25 0.02 1 normal @a[scores={particle=1}]
# The training meter must use this burn's owner, not the last shooter or an
# unrelated weapon.use marker. Keep the tag scoped to this one damage event.
tag @s[tag=setting.dummy] add setting.dps.flame
function zombie:take_damage0
tag @s[tag=setting.dummy] remove setting.dps.flame
execute if entity @s[scores={zombie.health=1..}] run return fail
function map:perk/kill_credit
function zombie:death
