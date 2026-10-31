
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="golden_pickaxe",\
    custom_data={\
            gun:ultimategolddiggerv,ammo:ultimategolddiggerv,slot:$(slot),\
            tag:["gun","ultimategolddiggerv","golden","clear","range","maximum","xpbar","golddigger_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.ultimategolddiggerv.name}],\
    lore=[\
        [{translate:zb.item.gun.ultimategolddiggerv.lore.0}],\
        [{translate:zb.item.gun.ultimategolddiggerv.lore.1}],\
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
