# 执行者 = 被增益效果（燃烧等）打死的敌人：把击杀记到 perk.owner 对应的玩家（同 weapon:range/gun/damage/damage 的击杀处理）
tag @a[tag=perk_owner] remove perk_owner
scoreboard players operation #owner perk = @s perk.owner
execute as @a if score @s uuid = #owner perk run tag @s add perk_owner
execute unless entity @a[tag=perk_owner] run return fail
execute as @p[tag=perk_owner] run loot replace block 1 -60 1 container.0 loot weapon:playerhead
data modify entity @s data.killed set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
item replace block 1 -60 1 container.0 with air
execute unless entity @s[tag=p5.raytarget] run scoreboard players add @p[tag=perk_owner] zombie.kill 1
tag @a[tag=perk_owner] remove perk_owner
