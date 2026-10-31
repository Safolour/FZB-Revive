
$item replace block 1 -60 1 container.26 with stick[\
    item_model="custom:tools/knife",\
    custom_data={\
            weapon:knife,block:$(block),damage:$(damage),slot:$(slot),upgrade:ultimateknife,\
            tag:["knife","knife_ammo","clear","melee","upgradable","block","gold"]\
        },\
    custom_name=[{translate:zb.item.melee.knife.name}],\
    lore=[\
        [{translate:zb.item.melee.knife.lore.0}],\
        [{translate:zb.item.melee.knife.lore.1}]\
    ],\
    unbreakable={}\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air


#$item replace entity @s container.$(slot) with stick[item_model="iron_sword",custom_data={gun:knife,slot:$(slot),block:$(block),tag:["knife","clear","melee","upgradable","right_click","block"]},custom_name=[{translate:"zb.item.melee.knife.name"}],lore=[[{translate:"zb.item.melee.knife.lore.0"}],[{translate:"zb.item.melee.knife.lore.1"}]],unbreakable={},blocks_attacks={bypassed_by:"#all_type",horizontal_blocking_angle:360,damage_reductions:[{base:0,factor:1}]}]
