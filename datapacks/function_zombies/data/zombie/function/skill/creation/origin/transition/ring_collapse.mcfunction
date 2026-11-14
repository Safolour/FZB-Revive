execute as @e[type=item_display,tag=origin.phase.ring.small] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[5f,3f,5f]},interpolation_duration:8}
execute as @e[type=item_display,tag=origin.phase.ring.medium] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[10f,3f,10f]},interpolation_duration:8}
execute as @e[type=item_display,tag=origin.phase.ring.large] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[15f,3f,15f]},interpolation_duration:8}
