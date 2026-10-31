# 生成一把新蓝图的 components → storage weapon bp.comp（强化次数 #bp_ult、满强化次数 #bp_full）
data remove storage weapon bp.comp
# 进度 p（0..1000）
scoreboard players operation #bp_p weapon.state = #bp_ult weapon.state
scoreboard players operation #bp_p weapon.state *= #bp_1000 weapon.state
scoreboard players operation #bp_p weapon.state /= #bp_full weapon.state
execute store result storage weapon bp.p int 1 run scoreboard players get #bp_p weapon.state
data modify storage weapon bp.comp set value {"minecraft:item_model":"minecraft:diamond_pickaxe","minecraft:custom_data":{type:"pickaxe",ammo:"blueprint",upgrade:"blueprint",gun:"blueprint",level:0,tag:["gun","blueprint","clear","range","upgradable","xpbar","blueprint_ammo","reset"],stat:{gun:"blueprint",hit:0,offset_x:-2147483648,offset_y:-2147483648,spread_x:-2147483648,spread_y:-2147483648,bullet:-2147483648,extrashot:-2147483648,extrashot_time:-2147483648}},"minecraft:lore":[]}
execute store result storage weapon bp.comp."minecraft:custom_data".stat.ultimate int 1 run scoreboard players get #bp_ult weapon.state
execute store result storage weapon bp.comp."minecraft:custom_data".stat.id int 1 run random value 1..2147483646
# 25% / 50% / 75% 换模型
execute if score #bp_p weapon.state matches 250.. run data modify storage weapon bp.comp."minecraft:item_model" set value "custom:tools/function0"
execute if score #bp_p weapon.state matches 500.. run data modify storage weapon bp.comp."minecraft:item_model" set value "custom:tools/function1"
execute if score #bp_p weapon.state matches 750.. run data modify storage weapon bp.comp."minecraft:item_model" set value "custom:tools/function2"
data modify storage weapon bp.comp."minecraft:custom_data".item_model set from storage weapon bp.comp."minecraft:item_model"
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.blueprint.lore.0"}
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.blueprint.lore.1"}
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.blueprint.lore.18"}
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.blueprint.lore.19"}
data modify storage weapon bp.comp."minecraft:lore" append value {text:""}
scoreboard players set #bp_sum weapon.state 0
scoreboard players set #bp_cnt weapon.state 0
function weapon:range/gun/gun/blueprint/roll/stat/damage
function weapon:range/gun/gun/blueprint/roll/stat/ammo
function weapon:range/gun/gun/blueprint/roll/stat/clip_ammo
function weapon:range/gun/gun/blueprint/roll/stat/rate
function weapon:range/gun/gun/blueprint/roll/stat/reload
function weapon:range/gun/gun/blueprint/roll/stat/range
function weapon:range/gun/gun/blueprint/roll/stat/punch

execute if score #bp_p weapon.state matches 500.. run function weapon:range/gun/gun/blueprint/roll/stat50
execute if score #bp_p weapon.state matches 750.. run function weapon:range/gun/gun/blueprint/roll/stat75
function weapon:range/gun/gun/blueprint/roll/stat/gold
function weapon:range/gun/gun/blueprint/roll/stat/gold_crit

data modify storage weapon bp.comp."minecraft:lore" append value {text:""}
execute store result storage weapon bp.line.n int 1 run scoreboard players get #bp_ult weapon.state
function weapon:range/gun/gun/blueprint/roll/count with storage weapon bp.line
data modify storage weapon bp.comp."minecraft:lore" append value {text:""}
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.end.0"}
data modify storage weapon bp.comp."minecraft:lore" append value {translate:"zb.item.gun.end.1"}
# 名字里的 [x%] = 各属性百分比的平均
scoreboard players operation #bp_sum weapon.state /= #bp_cnt weapon.state
execute store result storage weapon bp.line.p int 1 run scoreboard players get #bp_sum weapon.state
function weapon:range/gun/gun/blueprint/roll/line0 with storage weapon bp.line
function weapon:range/gun/gun/blueprint/roll/name with storage weapon bp.line
function weapon:range/gun/gun/blueprint/roll/fx
data remove storage weapon bp.line
data remove storage weapon bp.p
