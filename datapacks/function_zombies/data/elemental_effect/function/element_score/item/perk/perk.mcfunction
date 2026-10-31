
execute if items entity @s container.* *[custom_data~{tag:["frozen_bullet"]}] run tag @s add frozen
execute if items entity @s container.* *[custom_data~{tag:["fire_bullet"]}] run tag @s add fire
execute if items entity @s container.* *[custom_data~{tag:["electromagnetism"]}] run tag @s add electromagnetism
execute if items entity @s container.* *[custom_data~{tag:["wind"]}] run tag @s add wind

execute if entity @s[tag=frozen] run function elemental_effect:element_score/item/perk/frozen
execute if entity @s[tag=fire] run function elemental_effect:element_score/item/perk/fire
execute if entity @s[tag=electromagnetism] run function elemental_effect:element_score/item/perk/electromagnetism
execute if entity @s[tag=wind] run function elemental_effect:element_score/item/perk/wind
execute if entity @s[tag=frozen,tag=fire] run function elemental_effect:element_score/item/perk/frozen_fire
execute if entity @s[tag=frozen,tag=fire,tag=wind] run function elemental_effect:element_score/item/perk/frozen_fire_wind
execute if entity @s[tag=frozen,tag=electromagnetism] run function elemental_effect:element_score/item/perk/frozen_electromagnetism
execute if entity @s[tag=frozen,tag=wind] run function elemental_effect:element_score/item/perk/frozen_wind
execute if entity @s[tag=fire,tag=electromagnetism] run function elemental_effect:element_score/item/perk/fire_electromagnetism
execute if entity @s[tag=fire,tag=wind] run function elemental_effect:element_score/item/perk/fire_wind
execute if entity @s[tag=electromagnetism,tag=wind] run function elemental_effect:element_score/item/perk/electromagnetism_wind
execute if entity @s[tag=frozen,tag=fire,tag=electromagnetism] run function elemental_effect:element_score/item/perk/frozen_fire_electromagnetism
execute if entity @s[tag=frozen,tag=electromagnetism,tag=wind] run function elemental_effect:element_score/item/perk/frozen_electromagnetism_wind
execute if entity @s[tag=fire,tag=electromagnetism,tag=wind] run function elemental_effect:element_score/item/perk/fire_electromagnetism_wind

tag @s remove frozen
tag @s remove fire
tag @s remove electromagnetism
tag @s remove wind