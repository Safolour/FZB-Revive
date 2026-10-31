
$execute if score second game.timer matches ..9 run data modify storage game root.stat.time.time set value "$(minute):0$(second)"
$execute if score second game.timer matches 10.. run data modify storage game root.stat.time.time set value "$(minute):$(second)"

$execute if score hour game.timer matches 1.. if score minute game.timer matches ..9 if score second game.timer matches ..9 run data modify storage game root.stat.time.time set value "$(hour):0$(minute):0$(second)"
$execute if score hour game.timer matches 1.. if score minute game.timer matches ..9 if score second game.timer matches 10.. run data modify storage game root.stat.time.time set value "$(hour):0$(minute):$(second)"

$execute if score hour game.timer matches 1.. if score minute game.timer matches 10.. if score second game.timer matches ..9 run data modify storage game root.stat.time.time set value "$(hour):$(minute):0$(second)"
$execute if score hour game.timer matches 1.. if score minute game.timer matches 10.. if score second game.timer matches 10.. run data modify storage game root.stat.time.time set value "$(hour):$(minute):$(second)"