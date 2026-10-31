# 原地爆炸（selfexplosion）：持有者倒地时由 player_stat:revive/down 调用（执行者 = 倒地的玩家，在清空背包之前）
# 半径 5 格内的敌人受到 damage 点真实伤害（不看护甲）并被击退，每炸到一个敌人 +gold 金钱
particle explosion_emitter ~ ~1 ~
playsound entity.generic.explode record @a ~ ~ ~ 4 0.8
tag @s add perk_exploder
scoreboard players set #count perk 0
execute as @e[tag=mob,tag=hitable,distance=..5,scores={zombie.health=1..}] at @s run function map:perk/selfexplosion/damage
execute if score #count perk matches 1.. run function map:perk/selfexplosion/gold
tag @s remove perk_exploder
