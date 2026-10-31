
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="iron_hoe",\
    custom_data={\
            gun:shotgun,ammo:shotgun,upgrade:ultimateshotgun,slot:$(slot),\
            tag:["gun","shotgun","clear","range","upgradable","xpbar","shotgun_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.shotgun.name}],\
    lore=[\
        [{translate:zb.item.gun.shotgun.lore.0}],\
        [{translate:zb.item.gun.shotgun.lore.1}],\
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
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
