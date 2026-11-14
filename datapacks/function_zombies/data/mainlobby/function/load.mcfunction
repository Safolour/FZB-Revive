scoreboard objectives add fzb.attr dummy
function mainlobby:attribute_panel/restore
function mainlobby:setting/load

scoreboard objectives add lobby.hologram dummy
 scoreboard players set min lobby.hologram 10
 scoreboard players set max lobby.hologram 10
scoreboard objectives add lobby.uuid dummy
scoreboard objectives add lobby.menu_uuid dummy
scoreboard objectives add lobby.menu_page dummy
scoreboard objectives add lobby.menu_item dummy
scoreboard objectives add lobby.death deathCount

scoreboard objectives add lobby.info dummy
 scoreboard players reset player_count0 lobby.info
 scoreboard players reset map0 lobby.info


team add mainlobby.player
team modify mainlobby.player color white
team modify mainlobby.player collisionRule never
team modify mainlobby.player friendlyFire false
team modify mainlobby.player seeFriendlyInvisibles false
function mainlobby:spectator/load
forceload add 4 832
forceload add 161 670
forceload add 482 660
forceload add 800 660
forceload add 1124 660
function mainlobby:scoreboard/load
#spring
function mainlobby:hologram/round/keys_load
execute if score month system.stat matches 3..5 positioned 172 100 657 run function mainlobby:hologram/round/spawn {type:total_round,map:4,sort:0}
execute if score month system.stat matches 3..5 positioned 172 100 663 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute if score month system.stat matches 3..5 positioned 161 101 670 run function mainlobby:npc/joingame/spawn {x:180,y:0}
execute if score month system.stat matches 3..5 run return fail
#summer
execute if score month system.stat matches 6..8 positioned 490 102 657 run function mainlobby:hologram/round/spawn {type:total_round,map:4,sort:0}
execute if score month system.stat matches 6..8 positioned 490 102 663 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute if score month system.stat matches 6..8 positioned 482 103 668 run function mainlobby:npc/joingame/spawn {x:180,y:0}
execute if score month system.stat matches 6..8 run return fail
#autumn
execute if score month system.stat matches 9..11 positioned 809 102 657 run function mainlobby:hologram/round/spawn {type:total_round,map:4,sort:0}
execute if score month system.stat matches 9..11 positioned 809 102 663 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute if score month system.stat matches 9..11 positioned 803 102 666 run function mainlobby:npc/joingame/spawn {x:0,y:0}
execute if score month system.stat matches 9..11 run return fail
#winter
execute if score month system.stat matches 12 positioned 1133 101 672 run function mainlobby:hologram/round/spawn {type:total_round,map:4,sort:0}
execute if score month system.stat matches 12 positioned 1136 101 669 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute if score month system.stat matches 12 positioned 1135 102 649 run function mainlobby:npc/joingame/spawn {x:180,y:0}
execute if score month system.stat matches 12 run return fail
#winter
execute if score month system.stat matches 1..2 positioned 1133 101 672 run function mainlobby:hologram/round/spawn {type:total_round,map:4,sort:0}
execute if score month system.stat matches 1..2 positioned 1136 101 669 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute if score month system.stat matches 1..2 positioned 1135 102 649 run function mainlobby:npc/joingame/spawn {x:45,y:0}
execute if score month system.stat matches 1..2 run return fail



execute positioned 172 100 660 run function mainlobby:hologram/round/spawn {type:fastest_win,map:4,sort:1}
execute positioned 161 101 670 run function mainlobby:npc/joingame/spawn {x:180,y:0}
