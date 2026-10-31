
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="breeze_rod",\
    custom_data={\
            gun:ultimateairgun,ammo:ultimateairgun,slot:$(slot),\
            tag:["gun","ultimateairgun","clear","range","maximum","xpbar","airgun_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.ultimateairgun.name}],\
    lore=[\
        [{translate:zb.item.gun.ultimateairgun.lore.0}],\
        [{translate:zb.item.gun.ultimateairgun.lore.1}],\
        [{text:""}],\
        [{translate:zb.item.gun.0,with:[{text:"$(damage)"}]}],\
        [{translate:zb.item.gun.1,with:[{text:"$(ammo)"}]}],\
        [{translate:zb.item.gun.2,with:[{text:"$(clip_ammo)"}]}],\
        [{translate:zb.item.gun.3,with:[{text:"$(rate)"}]}],\
        [{translate:zb.item.gun.4,with:[{text:"$(reload)"}]}],\
        [{translate:zb.item.gun.5,with:[{text:"$(range)"}]}],\
        [{text:""}],\
        [{translate:"zb.item.gun.end.0"}],\
        [{translate:"zb.item.gun.end.1"}]\
    ],\
    enchantments={unbreaking:1},\
    tooltip_display={hidden_components:[enchantments]}\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
