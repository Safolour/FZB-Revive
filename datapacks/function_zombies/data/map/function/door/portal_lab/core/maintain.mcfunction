# Called once per second during the lab game; an opened door stays absent until its blocks return.
execute unless loaded 299 94 171 run return 0
execute if score lab_core door.open matches 1 if block 299 94 171 minecraft:black_stained_glass if block 301 95 172 minecraft:waxed_weathered_chiseled_copper run function map:door/portal_lab/core/reactivate
execute unless score lab_core door.open matches 0 run return 0
execute unless entity @e[type=interaction,tag=door,tag=lab_core,x=299.5,y=92,z=171.5,distance=..0.1,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=interaction,tag=door,tag=lab_core,x=300.5,y=92,z=171.5,distance=..0.1,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=interaction,tag=door,tag=lab_core,x=301.5,y=92,z=171.5,distance=..0.1,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=armor_stand,tag=door,tag=lab_core,tag=core_label,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=armor_stand,tag=door,tag=lab_core,tag=lab_label,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=armor_stand,tag=door,tag=lab_core,tag=core_price,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless entity @e[type=armor_stand,tag=door,tag=lab_core,tag=lab_price,limit=1] run return run function map:door/portal_lab/core/spawn
execute unless score @e[type=interaction,tag=door,tag=lab_core,limit=1] door.price = lab_core door.price run return run function map:door/portal_lab/core/spawn
