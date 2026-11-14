
scoreboard players set @s inventory 2
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
function map:shop/_get_item/perk_slot {slot:6,count:1}
function map:shop/_get_item/perk_slot {slot:7,count:2}
function map:shop/_get_item/perk_slot {slot:8,count:3}
# Clear perk items from every slot before persisting the death inventory.
execute if score @s perk.speed matches 1 run effect clear @s speed
clear @s *[custom_data~{tag:["fast_revive"]}]
clear @s *[custom_data~{tag:["speed"]}]
clear @s *[custom_data~{tag:["quick_fire"]}]
clear @s *[custom_data~{tag:["frozen_bullet"]}]
clear @s *[custom_data~{tag:["extra_health"]}]
clear @s *[custom_data~{tag:["gold_thrower"]}]
clear @s *[custom_data~{tag:["double_bullet"]}]
clear @s *[custom_data~{tag:["fast_regeneration"]}]
clear @s *[custom_data~{tag:["gravity_bullet"]}]
clear @s *[custom_data~{tag:["flame_bullet"]}]
clear @s *[custom_data~{tag:["ashes_bullet"]}]
clear @s *[custom_data~{tag:["neutralization_bullet"]}]
clear @s *[custom_data~{tag:["lightning_bullet"]}]
clear @s *[custom_data~{tag:["selfexplosion"]}]
clear @s *[custom_data~{tag:["no_knockback"]}]
clear @s *[custom_data~{tag:["absorptionconversion"]}]
clear @s *[custom_data~{tag:["magnetic_bullet"]}]
function map:perk/inventory_check
scoreboard players set @s inventory 1
function inventory:item_store0