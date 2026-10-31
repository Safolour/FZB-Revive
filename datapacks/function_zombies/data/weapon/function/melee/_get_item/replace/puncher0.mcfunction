
$item replace block 1 -60 1 container.26 with stick[\
    item_model="diamond_axe",\
    custom_data={\
            weapon:puncher,damage:$(damage),slot:$(slot),affect_enemy:$(affect_enemy0),upgrade:ultimatepuncher,\
            tag:["puncher","puncher_ammo","clear","melee","upgradable","gold"]\
        },\
    custom_name=[{translate:zb.item.melee.puncher.name}],\
    lore=[\
        [{translate:zb.item.melee.puncher.lore.0}],\
        [{translate:zb.item.melee.puncher.lore.1}],\
        [{translate:zb.item.melee.puncher.lore.2}],\
        [{text:""}],\
        [{translate:zb.item.melee.0,with:[{text:"$(affect_enemy)"}]}],\
        [{translate:zb.item.melee.1,with:[{text:"$(cooldown)"}]}]\
    ],\
    unbreakable={}\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
