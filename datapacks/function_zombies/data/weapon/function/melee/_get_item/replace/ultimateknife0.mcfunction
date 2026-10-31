
$item replace block 1 -60 1 container.26 with stick[\
    item_model="custom:tools/knife",\
    custom_data={\
            weapon:ultimateknife,block:$(block),damage:$(damage),slot:$(slot),\
            tag:["ultimateknife","knife_ammo","clear","melee","maximum","smite","block","gold"]\
        },\
    custom_name=[{translate:zb.item.melee.ultimateknife.name}],\
    lore=[\
        [{translate:zb.item.melee.ultimateknife.lore.0}],\
        [{translate:zb.item.melee.ultimateknife.lore.1}]\
    ],\
    unbreakable={},\
    enchantments={unbreaking:2},\
    tooltip_display={hidden_components:[enchantments]}\
    \
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
