
# 和录像一样用胡萝卜钓竿做底物品（右键切换等级）；物品数量 = 等级（1/2/3），所以去掉耐久、堆叠上限放到 3
$item replace entity @s container.$(slot) with carrot_on_a_stick[item_model="sugar",!max_damage,max_stack_size=3,custom_data={slot:$(slot),perk:speed,tag:["perk","speed","clear"]},custom_name=[{translate:"zb.item.perk.speed.1"}],lore=[[{translate:zb.item.perk.speed.lore0}],[{text:""}],[{translate:zb.item.perk.speed.lore1}],[{text:""}],[{translate:zb.item.perk.lore0}]]]
