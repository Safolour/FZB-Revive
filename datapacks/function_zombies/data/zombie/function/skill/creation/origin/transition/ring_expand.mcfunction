execute as @e[type=item_display,tag=origin.phase.ring.small] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[12f,3f,12f]},interpolation_duration:8}
execute as @e[type=item_display,tag=origin.phase.ring.medium] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[24f,3f,24f]},interpolation_duration:8}
execute as @e[type=item_display,tag=origin.phase.ring.large] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[36f,3f,36f]},interpolation_duration:8}
