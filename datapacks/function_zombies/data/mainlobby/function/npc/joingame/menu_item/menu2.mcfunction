
scoreboard players set @s lobby.menu_page 2
data modify entity @s Items set value [\
{id:zombie_head,count:1,Slot:12,components:{\
    custom_data:{tag:["clear","minecart","ee_stat"]},\
    custom_name:[{translate:zb.mainlobby.npc.ee_stat.name}],\
    lore:[\
        [{translate:zb.mainlobby.npc.ee_stat.lore.0,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.1,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.2,with:[{text:"§a0§r"}]}],\
        [{text:""}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.3,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.4,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.5,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.6,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.7,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.ee_stat.lore.8,with:[{text:"§a0§r"}]}],\
    ]}},\
{id:zombie_head,count:1,Slot:14,components:{\
    custom_data:{tag:["clear","minecart","lab_stat"]},\
    custom_name:[{translate:zb.mainlobby.npc.lab_stat.name}],\
    lore:[\
        [{translate:zb.mainlobby.npc.lab_stat.lore.0,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.1,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.2,with:[{text:"§a0§r"}]}],\
        [{text:""}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.3,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.4,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.5,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.6,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.7,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.lab_stat.lore.8,with:[{text:"§a0§r"}]}],\
    ]}},\
{id:arrow,count:1,Slot:18,components:{\
    custom_data:{tag:["clear","minecart","back"]},\
    custom_name:[{translate:zb.mainlobby.npc.back.name}],\
    lore:[\
        [{translate:zb.mainlobby.npc.back.lore.0}]\
    ]}},\
{id:paper,count:1,Slot:26,components:{\
    custom_data:{tag:["clear","minecart","global_stat"]},\
    custom_name:[{translate:zb.mainlobby.npc.global_stat.name}],\
    lore:[\
        [{translate:zb.mainlobby.npc.global_stat.lore.0,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.1,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.2,with:[{text:"§a0§r"}]}],\
        [{text:""}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.3,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.4,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.5,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.6,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.7,with:[{text:"§a0§r"}]}],\
        [{translate:zb.mainlobby.npc.global_stat.lore.8,with:[{text:"§a0§r"}]}],\
    ]}}\
]

scoreboard players operation uuid uuid = @s lobby.uuid
execute as @a if score @s uuid = uuid uuid run loot replace block 1 -60 1 container.0 loot system:playerhead
data modify storage mainlobby root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
data modify storage mainlobby root.player.type set value 3
data modify storage mainlobby root.player.slot set value 12
function mainlobby:npc/joingame/menu_item/menu2_stat with storage mainlobby root.player
data modify storage mainlobby root.player.type set value 4
data modify storage mainlobby root.player.slot set value 14
function mainlobby:npc/joingame/menu_item/menu2_stat with storage mainlobby root.player
data modify storage mainlobby root.player.type set value 'global'
data modify storage mainlobby root.player.slot set value 26
function mainlobby:npc/joingame/menu_item/menu2_stat with storage mainlobby root.player
execute store result score @s lobby.menu_item run data get entity @s Items