
$item replace block 1 -60 1 container.26 with stick[\
    item_model="diamond_axe",\
    custom_data={\
            weapon:ultimatepuncher,damage:$(damage),slot:$(slot),affect_enemy:$(affect_enemy0),\
            tag:["ultimatepuncher","puncher_ammo","clear","melee","maximum","gold"]\
        },\
    custom_name=[{translate:zb.item.melee.ultimatepuncher.name}],\
    lore=[\
        [{translate:zb.item.melee.ultimatepuncher.lore.0}],\
        [{translate:zb.item.melee.ultimatepuncher.lore.1}],\
        [{translate:zb.item.melee.ultimatepuncher.lore.2}],\
        [{text:""}],\
        [{translate:zb.item.melee.0,with:[{text:"$(affect_enemy)"}]}],\
        [{translate:zb.item.melee.1,with:[{text:"$(cooldown)"}]}]\
    ],\
    unbreakable={},\
    enchantments={unbreaking:1},\
    tooltip_display={hidden_components:[enchantments]}\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
