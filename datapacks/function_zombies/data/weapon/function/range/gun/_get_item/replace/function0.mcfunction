
# 物品 / lore 照录像（raw/2026_10_11_12_29_09）：carrot_on_a_stick + custom:tools/function3；不能再强化（maximum）
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="custom:tools/function3",tooltip_style="minecraft:function",\
    custom_data={\
            gun:function,ammo:function,slot:$(slot),level:0,type:"pickaxe",\
            tag:["gun","function","clear","range","maximum","unupgradable","undarknessable","xpbar","function_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.function.name,with:[{text:""}]}],\
    lore=[\
        [{translate:zb.item.gun.function.lore.0}],\
        [{translate:zb.item.gun.function.lore.1}],\
        [{translate:zb.item.gun.function.lore.2}],\
        [{text:""}],\
        [{translate:zb.item.gun.0,with:[{text:"$(damage)"}]}],\
        [{translate:zb.item.gun.1,with:[{text:"$(ammo)"}]}],\
        [{translate:zb.item.gun.2,with:[{text:"$(clip_ammo)"}]}],\
        [{translate:zb.item.gun.3,with:[{text:"$(rate)"}]}],\
        [{translate:zb.item.gun.4,with:[{text:"$(reload)"}]}],\
        [{translate:zb.item.gun.5,with:[{text:"$(range)"}]}],\
        [{translate:zb.item.gun.6,with:[{text:"$(bullet)"}]}],\
        [{translate:zb.item.gun.12,with:[{text:"§a10§r"}]}],\
        [{translate:zb.item.gun.11,with:[{text:"§a5.0§r"}]}],\
        [{translate:zb.item.gun.24,with:[{text:"§a3000.0§r"}]}],\
        [{translate:zb.item.gun.25,with:[{translate:"zb.item.gun.infinity"}]}],\
        [{text:""}],\
        [{translate:"zb.item.gun.end.0"}],\
        [{translate:"zb.item.gun.end.1"}],\
        [{translate:zb.item.gun.function.lore.3,with:[{keybind:"key.drop",color:"yellow",italic:false}]}]\
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
