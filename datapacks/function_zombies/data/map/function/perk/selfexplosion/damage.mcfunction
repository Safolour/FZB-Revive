# 执行者 = 被炸到的敌人，爆炸中心 = @p[tag=perk_exploder]
execute unless entity @s[tag=p5.raytarget] run scoreboard players add #count perk 1
scoreboard players operation #adjusted perk.selfexplosion = damage perk.selfexplosion
execute if score #atk fzb.attr matches 20..180 run scoreboard players operation #adjusted perk.selfexplosion *= #atk fzb.attr
execute if score #atk fzb.attr matches 20..180 run scoreboard players operation #adjusted perk.selfexplosion /= 100 number
scoreboard players operation @s zombie.health -= #adjusted perk.selfexplosion
scoreboard players operation #punch perk = punch perk.selfexplosion
function map:perk/selfexplosion/knockback
function zombie:take_damage0
execute if entity @s[scores={zombie.health=1..}] run return fail
scoreboard players operation @s perk.owner = @p[tag=perk_exploder] uuid
function map:perk/kill_credit
function zombie:death
