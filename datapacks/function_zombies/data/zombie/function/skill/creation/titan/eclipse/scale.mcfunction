$execute as @e[type=item_display,tag=titan.eclipse.shell.black] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[$(black)f,$(black)f,$(black)f]}}
$execute as @e[type=item_display,tag=titan.eclipse.shell.glass] if score @s origin.owner = #owner origin.owner run data merge entity @s {transformation:{scale:[$(glass)f,$(glass)f,$(glass)f]}}
