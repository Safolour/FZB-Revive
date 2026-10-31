
execute if data entity @p[scores={weapon.use=1..}] EnderItems[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[0].type.crimson run function map:area/lab/reaction/fire/attribute_mob_add {type:crimson,source:player}
execute if data entity @p[scores={weapon.use=1..}] EnderItems[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[0].type.warped run function map:area/lab/reaction/fire/attribute_mob_add {type:warped,source:player}
execute if data entity @p[scores={weapon.use=1..}] EnderItems[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[0].type.ashes run function map:area/lab/reaction/fire/attribute_mob_add {type:ashes,source:player}
execute if data entity @p[scores={weapon.use=1..}] EnderItems[{Slot:26b}].components."minecraft:custom_data".root.area.reaction[0].type.spirit run function map:area/lab/reaction/fire/attribute_mob_add {type:spirit,source:player}
