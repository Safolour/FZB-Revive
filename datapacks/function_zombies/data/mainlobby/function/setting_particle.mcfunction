
scoreboard players add portal_timer system.stat 1
execute positioned 4 -57 832 rotated 90 0 run function mainlobby:setting_particle0
execute if score month system.stat matches 3..5 positioned 151 102 660 rotated 90 0 run function mainlobby:setting_particle0
execute if score month system.stat matches 6..8 positioned 474 104 660 rotated 90 0 run function mainlobby:setting_particle0
execute if score month system.stat matches 9..11 positioned 797 104 660 rotated 90 0 run function mainlobby:setting_particle0
execute if score month system.stat matches 12 positioned 1113 103 649 rotated -45 0 run function mainlobby:setting_particle0
execute if score month system.stat matches 1..2 positioned 1113 103 649 rotated -45 0 run function mainlobby:setting_particle0
execute if score portal_timer system.stat matches 20.. run scoreboard players set portal_timer system.stat -1
