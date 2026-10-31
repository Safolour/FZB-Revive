# 落雷标记（map:tick1 调用，执行位置 = 标记）：落雷打 5 格内所有敌人（群体），伤害同电击棒技能
execute unless score @s perk.target = @s perk.target run return run kill @s
scoreboard players operation #target perk = @s perk.target
tag @e[tag=perk_lightning_target] remove perk_lightning_target
execute as @e[tag=mob,tag=hitable,scores={zombie.health=1..}] if score @s zombie.uuid = #target perk run tag @s add perk_lightning_target
execute unless entity @e[tag=perk_lightning_target] run return run kill @s
scoreboard players operation #owner perk = @s perk.owner
tag @a[tag=perk_owner] remove perk_owner
execute as @a if score @s uuid = #owner perk run tag @s add perk_owner
execute unless entity @a[tag=perk_owner] run return run function map:perk/lightning_bullet/end
# 技能伤害按 @p[scores={weapon.use=1..}] 找攻击者，这里临时把拥有者设成电击棒
execute as @p[tag=perk_owner] run scoreboard players operation @s weapon.use = uuid weapon.range.skill.lightningrod
scoreboard players set enemy_count weapon.state 0
execute at @s as @e[tag=mob,tag=hitable,distance=..5] at @s run function weapon:range/skill/skill/lightningrod/damage
execute if score enemy_count weapon.state matches 1.. as @p[tag=perk_owner] run function map:perk/lightning_bullet/gold
execute as @p[tag=perk_owner] run scoreboard players set @s weapon.use 0
# 原版闪电：10 格内所有怪 1 秒抗性 V 挡掉 5 点伤害；抗性挡不住着火，1 tick 后清火
execute at @s run effect give @e[tag=mob,distance=..10] resistance 1 4 true
execute at @s run summon lightning_bolt ~ ~ ~
execute at @s run summon marker ~ ~ ~ {Tags:["lightning_fire_clear"]}
schedule function weapon:range/skill/skill/lightningrod/fire_clear 1t
function map:perk/lightning_bullet/end
