
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="wooden_shovel",\
    custom_data={\
            gun:ultimatesniper,ammo:ultimatesniper,slot:$(slot),\
            tag:["gun","ultimatesniper","clear","range","maximum","xpbar","sniper_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.ultimatesniper.name}],\
    lore=[\
        [{translate:zb.item.gun.ultimatesniper.lore.0}],\
        [{translate:zb.item.gun.ultimatesniper.lore.1}],\
        [{translate:zb.item.gun.ultimatesniper.lore.2}],\
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
