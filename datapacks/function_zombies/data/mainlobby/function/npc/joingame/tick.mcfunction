
execute unless entity @s[tag=opened] run return fail


execute if score @s lobby.menu_page matches 1 unless items entity @s container.12 *[custom_data~{tag:["join_ee"]}] run function mainlobby:npc/joingame/interact/join_ee
execute if score @s lobby.menu_page matches 1 unless items entity @s container.14 *[custom_data~{tag:["join_lab"]}] run function mainlobby:npc/joingame/interact/join_lab
execute if score @s lobby.menu_page matches 1 unless items entity @s container.18 *[custom_data~{tag:["stat"]}] run function mainlobby:npc/joingame/interact/stat
execute if score @s lobby.menu_page matches 1 unless items entity @s container.26 *[custom_data~{tag:["rejoin"]}] run function mainlobby:npc/joingame/interact/rejoin

execute if score @s lobby.menu_page matches 2 unless items entity @s container.18 *[custom_data~{tag:["back"]}] run function mainlobby:npc/joingame/interact/back

execute store result score item lobby.menu_item run data get entity @s Items
execute unless score @s lobby.menu_item = item lobby.menu_item run function mainlobby:npc/joingame/menu_item/menu_reset