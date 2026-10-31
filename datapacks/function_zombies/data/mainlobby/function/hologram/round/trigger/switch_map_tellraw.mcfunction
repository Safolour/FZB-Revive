playsound block.lever.click record @a ~ ~ ~ 1 2 0
$function mainlobby:hologram/round/keys {type:$(type),map:$(map)}
data modify storage stat root.leaderboard_key.tag set value ""
function mainlobby:hologram/round/trigger/switch_map_tellraw0 with storage stat root.leaderboard_key
