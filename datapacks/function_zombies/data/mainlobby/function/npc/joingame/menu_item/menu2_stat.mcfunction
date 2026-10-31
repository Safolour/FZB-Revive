
$data modify storage mainlobby root.player.stat set from storage stat root.player.$(type).$(name)
data modify storage mainlobby root.player.stat.slot set from storage mainlobby root.player.slot
function mainlobby:npc/joingame/menu_item/menu2_stat0 with storage mainlobby root.player.stat
data remove storage mainlobby root.player.stat