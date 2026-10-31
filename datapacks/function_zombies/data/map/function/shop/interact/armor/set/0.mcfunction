
execute if score armor shop matches 1 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:0,helmet_change:0,helmet_armor1:2,\
    chestplate_armor0:0,chestplate_change:0,chestplate_armor1:4,\
    leggings_armor0:0,leggings_change:0,leggings_armor1:3,\
    boots_armor0:0,boots_change:0,boots_armor1:1,\
}
execute if score armor shop matches 2 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:2,helmet_change:1,helmet_armor1:6,\
    chestplate_armor0:4,chestplate_change:1,chestplate_armor1:8,\
    leggings_armor0:3,leggings_change:1,leggings_armor1:7,\
    boots_armor0:1,boots_change:1,boots_armor1:5,\
}
execute if score armor shop matches 3 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:6,helmet_change:1,helmet_armor1:10,\
    chestplate_armor0:8,chestplate_change:1,chestplate_armor1:12,\
    leggings_armor0:7,leggings_change:1,leggings_armor1:11,\
    boots_armor0:5,boots_change:1,boots_armor1:9,\
}
execute if score armor shop matches 4 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:0,helmet_change:0,helmet_armor1:10,\
    chestplate_armor0:0,chestplate_change:0,chestplate_armor1:12,\
    leggings_armor0:0,leggings_change:0,leggings_armor1:11,\
    boots_armor0:9,boots_change:1,boots_armor1:13,\
}
execute if score armor shop matches 5 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:10,helmet_change:1,helmet_armor1:14,\
    chestplate_armor0:0,chestplate_change:0,chestplate_armor1:12,\
    leggings_armor0:0,leggings_change:0,leggings_armor1:11,\
    boots_armor0:0,boots_change:0,boots_armor1:13,\
}
execute if score armor shop matches 6 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:0,helmet_change:0,helmet_armor1:14,\
    chestplate_armor0:0,chestplate_change:0,chestplate_armor1:12,\
    leggings_armor0:11,leggings_change:1,leggings_armor1:15,\
    boots_armor0:0,boots_change:0,boots_armor1:13,\
}
execute if score armor shop matches 7 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:0,helmet_change:0,helmet_armor1:14,\
    chestplate_armor0:12,chestplate_change:1,chestplate_armor1:16,\
    leggings_armor0:0,leggings_change:0,leggings_armor1:15,\
    boots_armor0:0,boots_change:0,boots_armor1:13,\
}
# 8 = 满级（合金套已删除）：显示全套钻石
execute if score armor shop matches 8 run data modify storage shop root.armor.lore set value {\
    helmet_armor0:0,helmet_change:0,helmet_armor1:14,\
    chestplate_armor0:0,chestplate_change:0,chestplate_armor1:16,\
    leggings_armor0:0,leggings_change:0,leggings_armor1:15,\
    boots_armor0:0,boots_change:0,boots_armor1:13,\
}




$data modify storage shop root.armor.lore.slot set value $(slot)
function map:shop/interact/armor/set/1 with storage shop root.armor.lore