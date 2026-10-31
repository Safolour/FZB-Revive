
$function mainlobby:hologram/round/get {type:$(type),map:$(map),sort:$(sort)}
$execute as @e[tag=hologram,tag=lobby,tag=text,tag=$(type)] run function system:death
$summon armor_stand ~ ~0.125 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:""}],Tags:["hologram","lobby","text","root","$(type)"]}
$summon interaction ~ ~ ~ {height:4,width:2,Tags:["hologram","lobby","text","root","interactable","$(type)"],data:{type:$(type),map:$(map),sort:$(sort)}}

$data modify storage stat root.info_text.type set value $(type)
data modify storage stat root.info1 set from storage stat root.info
execute store result score line lobby.hologram run data get storage stat root.info1
scoreboard players set line1 lobby.hologram 1

execute if score max lobby.hologram < min lobby.hologram run scoreboard players operation max lobby.hologram = min lobby.hologram

$execute as @n[type=armor_stand,tag=hologram,tag=lobby,tag=text,tag=root,tag=$(type)] at @s run summon armor_stand ~ ~0.375 ~ {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:zb.mainlobby.leaderboard.0}],Tags:["hologram","lobby","text","$(type)"]}
$function mainlobby:hologram/round/keys {type:$(type),map:$(map)}
$data modify storage stat root.leaderboard_key.tag set value $(type)
function mainlobby:hologram/round/spawn_text with storage stat root.leaderboard_key
$execute as @n[type=armor_stand,tag=hologram,tag=lobby,tag=text,tag=root,tag=$(type)] at @s run function mainlobby:hologram/round/spawn0 {type:$(type)}
$scoreboard players set @e[tag=hologram,tag=lobby,tag=text,tag=$(type)] map $(map)
$execute as @n[type=armor_stand,tag=hologram,tag=lobby,tag=text,tag=root,tag=$(type)] at @s run function mainlobby:hologram/round/spawn_0
data remove storage stat root.info1
data remove storage stat root.infotext