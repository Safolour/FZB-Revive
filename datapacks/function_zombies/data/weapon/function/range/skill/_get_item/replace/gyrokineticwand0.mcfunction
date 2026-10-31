
$item replace block 1 -60 1 container.26 with carrot_on_a_stick[\
    max_damage=10000,item_model="blaze_rod",\
    custom_data={\
            skill:gyrokineticwand,slot:$(slot),\
            tag:["skill","gyrokineticwand","clear","range"]\
        },\
    custom_name=[{translate:zb.item.skill.gyrokineticwand.name}],\
    lore=[\
        [{translate:zb.item.skill.gyrokineticwand.lore.0}],\
        [{translate:zb.item.skill.gyrokineticwand.lore.1}],\
        [{text:""}],\
        [{translate:"zb.item.skill.0"}]\
    ]\
]
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
