
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="golden_apple",\
    custom_data={\
            skill:heal,slot:$(slot),\
            tag:["skill","heal","clear","range"]\
        },\
    custom_name=[{translate:zb.item.skill.heal.name}],\
    lore=[\
        [{translate:zb.item.skill.heal.lore.0,with:[{text:"§a$(heal_self)§r"}]}],\
        [{translate:zb.item.skill.heal.lore.1,with:[{text:"§a$(heal_other)§r"}]}],\
        [{text:""}],\
        [{translate:"zb.item.skill.0"}]\
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
