# 物品 / lore 照录像（replay分析/tmp/lament_item.json）：diamond_shovel 模型
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="diamond_shovel",\
    custom_data={\
            gun:ultimatelament,ammo:ultimatelament,slot:$(slot),level:1,type:"shovel",\
            tag:["gun","ultimatelament","clear","range","maximum.upgrade","xpbar","ultimatelament_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.ultimatelament.name}],\
    lore=[\
        [{translate:zb.item.gun.ultimatelament.lore.0}],\
        [{translate:zb.item.gun.ultimatelament.lore.1}],\
        [{translate:zb.item.gun.ultimatelament.lore.2}],\
        [{translate:zb.item.gun.ultimatelament.lore.3}],\
        [{translate:zb.item.gun.ultimatelament.lore.4}],\
        [{translate:zb.item.gun.ultimatelament.lore.5}],\
        [{text:""}],\
        [{translate:zb.item.gun.0,with:[{text:"$(damage)"}]}],\
        [{translate:zb.item.gun.1,with:[{text:"$(ammo)"}]}],\
        [{translate:zb.item.gun.2,with:[{text:"$(clip_ammo)"}]}],\
        [{translate:zb.item.gun.3,with:[{text:"$(rate)"}]}],\
        [{translate:zb.item.gun.4,with:[{text:"$(reload)"}]}],\
        [{translate:zb.item.gun.5,with:[{text:"$(range)"}]}],\
        [{translate:zb.item.gun.6,with:[{text:"$(bullet)"}]}],\
        [{translate:zb.item.gun.7,with:[{text:"§a3§r"}]}],\
        [{text:""}],\
        [{translate:"zb.item.gun.end.0"}],\
        [{translate:"zb.item.gun.end.1"}]\
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
