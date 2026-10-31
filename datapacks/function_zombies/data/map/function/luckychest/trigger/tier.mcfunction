# 每次抽取前按当前轮次选奖池（档位见 luckychest/load）：r1–20 / r21–30 / r31–39 / r40 / r41+
data modify storage luckychest item set from storage luckychest tier.r1
execute if score round game.state matches 21..30 run data modify storage luckychest item set from storage luckychest tier.r21
execute if score round game.state matches 31..39 run data modify storage luckychest item set from storage luckychest tier.r31
execute if score round game.state matches 40.. run data modify storage luckychest item set from storage luckychest tier.r40
execute if score round game.state matches 41.. run data modify storage luckychest item set from storage luckychest tier.r41

# 四季随大厅月份变化（春 3–5 月、夏 6–8 月、秋 9–11 月、冬 12–2 月）。
execute if score month system.stat matches 3..5 run data modify storage luckychest item append value {id:season_spring,item:carrot_on_a_stick,model:"custom:tools/emerald_hoe",type:gun}
execute if score month system.stat matches 6..8 run data modify storage luckychest item append value {id:season_summer,item:carrot_on_a_stick,model:"golden_pickaxe",type:gun}
execute if score month system.stat matches 9..11 run data modify storage luckychest item append value {id:season_autumn,item:carrot_on_a_stick,model:"netherite_pickaxe",type:gun}
execute if score month system.stat matches 12 run data modify storage luckychest item append value {id:season_winter,item:carrot_on_a_stick,model:"custom:tools/ice_pickaxe",type:gun}
execute if score month system.stat matches 1..2 run data modify storage luckychest item append value {id:season_winter,item:carrot_on_a_stick,model:"custom:tools/ice_pickaxe",type:gun}
