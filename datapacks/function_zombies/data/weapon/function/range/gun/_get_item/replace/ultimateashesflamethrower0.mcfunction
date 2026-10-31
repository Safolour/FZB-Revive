
# 物品 / lore 照录像（raw/2026_10_24_17_56_55）：netherite_hoe 模型，额外伤害、穿透、霰弹数量、子弹偏移四行是固定值
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="netherite_hoe",\
    custom_data={\
            gun:ultimateashesflamethrower,ammo:ultimateashesflamethrower,slot:$(slot),level:1,type:"hoe",\
            tag:["gun","ultimateashesflamethrower","clear","range","maximum","xpbar","ashesflamethrower_ammo"]\
        },\
    custom_name=[{translate:zb.item.gun.ultimateashesflamethrower.name}],\
    lore=[\
        [{translate:zb.item.gun.ultimateashesflamethrower.lore.0}],\
        [{translate:zb.item.gun.ultimateashesflamethrower.lore.1}],\
        [{translate:zb.item.gun.ultimateashesflamethrower.lore.2}],\
        [{text:""}],\
        [{translate:zb.item.gun.0,with:[{text:"$(damage)"}]}],\
        [{translate:zb.item.gun.1,with:[{text:"$(ammo)"}]}],\
        [{translate:zb.item.gun.2,with:[{text:"$(clip_ammo)"}]}],\
        [{translate:zb.item.gun.3,with:[{text:"$(rate)"}]}],\
        [{translate:zb.item.gun.4,with:[{text:"$(reload)"}]}],\
        [{translate:zb.item.gun.5,with:[{text:"$(range)"}]}],\
        [{translate:zb.item.gun.7,with:[{text:"§a0.5§r"}]}],\
        [{translate:zb.item.gun.9,with:[{text:"§a2§r"}]}],\
        [{translate:zb.item.gun.12,with:[{text:"§a1-3§r"}]}],\
        [{translate:zb.item.gun.11,with:[{text:"§a7.5§r"}]}],\
        [{text:""}],\
        [{translate:"zb.item.gun.end.0"}],\
        [{translate:"zb.item.gun.end.1"}]\
    ],\
    enchantments={unbreaking:1},\
    tooltip_display={hidden_components:[enchantments]}\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
