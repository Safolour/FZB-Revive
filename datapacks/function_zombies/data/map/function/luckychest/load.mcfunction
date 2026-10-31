scoreboard objectives add luckychest dummy
 scoreboard players set roll_time luckychest 200
 scoreboard players set roll_time.shoppingspree luckychest 120
 scoreboard players set price luckychest 1000
 scoreboard players set price.shoppingspree luckychest 100
 scoreboard players set disappear.time luckychest 200
scoreboard objectives add luckychest.price dummy
scoreboard objectives add luckychest.timer dummy
scoreboard objectives add luckychest.state dummy
scoreboard objectives add luckychest.user_uuid dummy
scoreboard objectives add luckychest.item dummy
 scoreboard players set unrepeatable luckychest.item 1

scoreboard objectives add luckychest.frame dummy


# 幸运箱奖池按轮次分档，每次抽取时由 trigger/tier 按 round game.state 复制到 luckychest item
# item = 箱子上展示的物品，model = 展示用的 item_model（同新版武器模型，录像里读的）
# 分档按录像聊天里“在幸运箱里找到了 / 在幸运箱中获取”配上当时的“第 N 回合”标题统计（replay分析/scan_lucky.js，
#   PL 地图 143 次出货，r7–r69；详见改动说明 §12“幸运箱分档”）。每档 = 上一档 + 新出现的：
#   r1–20：基础池（含蓝图）
#   r21–30：+ 雪球炮、火焰发射器、旋转法杖、空气枪
#   r31–39：+ 音枪、灰烬火焰发射器、挽歌、彩虹散弹枪、极光
#   水枪、空气枪、音枪录像里没人领过（没人要），档位是用户定的（2026-10-29）
#   r40+：+ 彩虹火箭筒、回音技能、铜枪、共鸣；r41+：+ 彩虹狙击枪
#   四季枪每次抽取时按大厅季节（月 system.stat）选一个加入对应轮次池
data modify storage luckychest tier.r1 set value [{id:puncher,item:diamond_axe,model:"diamond_axe",type:melee},{id:zapper,item:diamond_pickaxe,model:"diamond_pickaxe",type:gun},{id:rainbowrifle,item:golden_shovel,model:"golden_shovel",type:gun},{id:golddigger,item:golden_pickaxe,model:"golden_pickaxe",type:gun},{id:doubleshotgun,item:flint_and_steel,model:"flint_and_steel",type:gun},{id:lightningrod,item:blaze_rod,model:"blaze_rod",type:skill},{id:heal,item:golden_apple,model:"golden_apple",type:skill},{id:soaker,item:diamond_hoe,model:"diamond_hoe",type:gun},{id:blueprint,item:diamond_pickaxe,model:"diamond_pickaxe",type:gun}]
data modify storage luckychest tier.r21_add set value [{id:snowballcannon,item:diamond_shovel,model:"diamond_shovel",type:gun},{id:flamethrower,item:golden_hoe,model:"golden_hoe",type:gun},{id:gyrokineticwand,item:blaze_rod,model:"blaze_rod",type:skill},{id:airgun,item:breeze_rod,model:"breeze_rod",type:gun}]
# 2026-10-29 做好了：蓝图 r1 起（上面 r1 最后一项）
data modify storage luckychest tier.r21 set from storage luckychest tier.r1
data modify storage luckychest tier.r21 append from storage luckychest tier.r21_add[]
data remove storage luckychest tier.r21_add
data modify storage luckychest tier.r31 set from storage luckychest tier.r21
data modify storage luckychest tier.r31 append value {id:musicgun,item:carrot_on_a_stick,model:"custom:tools/emerald_hoe",type:gun}
# 2026-10-29 做好了：灰烬火焰发射器 r31 起
data modify storage luckychest tier.r31 append value {id:ashesflamethrower,item:netherite_hoe,model:"netherite_hoe",type:gun}
data modify storage luckychest tier.r31 append value {id:lament,item:diamond_shovel,model:"diamond_shovel",type:gun}
data modify storage luckychest tier.r31 append value {id:rainbowshotgun,item:carrot_on_a_stick,model:"iron_shovel",type:gun}
data modify storage luckychest tier.r31 append value {id:aurora,item:carrot_on_a_stick,model:"diamond_shovel",type:gun}
data modify storage luckychest tier.r40 set from storage luckychest tier.r31
data modify storage luckychest tier.r40 append value {id:rainbowrocketlauncher,item:carrot_on_a_stick,model:"stone_shovel",type:gun}
data modify storage luckychest tier.r40 append value {id:coppergun,item:carrot_on_a_stick,model:"custom:tools/copper_hoe",type:gun}
data modify storage luckychest tier.r40 append value {id:resonance,item:carrot_on_a_stick,model:"custom:tools/lapis_pickaxe",type:gun}
data modify storage luckychest tier.r40 append value {id:parallax,item:carrot_on_a_stick,model:"diamond_horse_armor",type:gun}
data modify storage luckychest tier.r40 append value {id:echo,item:echo_shard,model:"echo_shard",type:skill}
data modify storage luckychest tier.r41 set from storage luckychest tier.r40
data modify storage luckychest tier.r41 append value {id:rainbowsniper,item:carrot_on_a_stick,model:"wooden_shovel",type:gun}

data modify storage luckychest item set from storage luckychest tier.r1
