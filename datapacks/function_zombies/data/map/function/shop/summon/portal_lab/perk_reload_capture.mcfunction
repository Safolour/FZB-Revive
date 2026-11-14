# Run at the perk marker, before summoning any unopened purchase minecart.
# Keep the 9x9 shell for left-click reloads while personal interaction is suspended.
execute as @e[type=interaction,tag=shop,tag=perk,tag=interaction0] run function system:death
summon interaction ~ ~-3.5 ~ {Tags:["shop","perk","interaction0","reload_capture"],width:9,height:9}
