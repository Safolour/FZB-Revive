
scoreboard players set @s lobby.menu_page 1
data modify entity @s Items set value [\
{id:zombie_head,count:1,Slot:12,components:{\
    custom_data:{tag:["clear","minecart","join_ee"]},\
    custom_name:[{translate:"zb.mainlobby.npc.ee.name"}],\
    lore:[\
        [{translate:zb.mainlobby.npc.ee.lore.0}],\
        [{translate:zb.mainlobby.npc.ee.lore.1}],\
        [{translate:zb.mainlobby.npc.ee.lore.2}],\
        [{translate:zb.mainlobby.npc.ee.lore.3}],\
        [{translate:zb.mainlobby.npc.ee.lore.4}],\
        [{translate:zb.mainlobby.npc.ee.lore.5}],\
        [{translate:zb.mainlobby.npc.ee.lore.6}],\
        [{translate:zb.mainlobby.npc.ee.lore.7}],\
        [{translate:zb.mainlobby.npc.ee.lore.8}],\
        [{translate:zb.mainlobby.npc.ee.lore.9}],\
        [{translate:zb.mainlobby.npc.ee.lore.10}],\
        [{text:""}]\
    ]}},\
{id:zombie_head,count:1,Slot:14,components:{\
    custom_data:{tag:["clear","minecart","join_lab"]},\
    custom_name:[{translate:"zb.mainlobby.npc.lab.name"}],\
    lore:[\
        [{translate:zb.mainlobby.npc.lab.lore.0}],\
        [{translate:zb.mainlobby.npc.lab.lore.1}],\
        [{translate:zb.mainlobby.npc.lab.lore.2}],\
        [{translate:zb.mainlobby.npc.lab.lore.3}],\
        [{translate:zb.mainlobby.npc.lab.lore.4}],\
        [{translate:zb.mainlobby.npc.lab.lore.5}],\
        [{translate:zb.mainlobby.npc.lab.lore.6}],\
        [{text:""}]\
    ]}},\
{id:paper,count:1,Slot:18,components:{custom_data:{tag:["clear","minecart","stat"]},custom_name:[{translate:"zb.mainlobby.npc.view_stat.name"}],lore:[[{translate:"zb.mainlobby.npc.view_stat.lore.0"}],[{translate:"zb.mainlobby.npc.view_stat.lore.1"}],[{translate:"zb.mainlobby.npc.view_stat.lore.2"}]]}},\
{id:"ender_pearl",count:1,Slot:26,components:{custom_data:{tag:["clear","minecart","rejoin"]},custom_name:[{translate:"zb.mainlobby.npc.rejoin.name"}],lore:[[{translate:"zb.mainlobby.npc.rejoin.lore.0"}],[{translate:"zb.mainlobby.npc.rejoin.lore.1"}],[{translate:"zb.mainlobby.npc.rejoin.lore.2"}],[{translate:"zb.mainlobby.npc.rejoin.lore.3"}],[{translate:"zb.mainlobby.npc.rejoin.lore.4"}]]}}\
]
scoreboard players set in_game0 lobby.info -1
function mainlobby:npc/joingame/menu_item/menu1_playercount
execute store result score @s lobby.menu_item run data get entity @s Items