
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="blaze_rod",\
    custom_data={\
            skill:lightningrod,slot:$(slot),\
            tag:["skill","lightningrod","clear","range"]\
        },\
    custom_name=[{translate:zb.item.skill.lightningrod.name}],\
    lore=[\
        [{translate:zb.item.skill.lightningrod.lore.0,with:[{text:"§a$(damage)§r"}]}],\
        [{translate:zb.item.skill.lightningrod.lore.1,with:[{text:"§a$(damage)§r"}]}],\
        [{translate:zb.item.skill.lightningrod.lore.2}],\
        [{text:""}],\
        [{translate:"zb.item.skill.0"}]\
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
