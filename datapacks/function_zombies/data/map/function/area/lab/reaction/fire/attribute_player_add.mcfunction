
execute unless entity @s[scores={stat.player=1},gamemode=!spectator,gamemode=!creative] run return fail

execute if entity @s[scores={area.reaction.fire_duration=1..}] run return fail
scoreboard players add @s area.reaction.fire 1
execute unless score @s area.reaction.fire_timer matches 1.. run scoreboard players operation @s area.reaction.fire_timer = player_default area.reaction.fire_timer
scoreboard players operation @s area.reaction.fire_duration = player_default area.reaction.fire_duration
item replace block 1 -60 1 container.26 from entity @s enderchest.26
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".root.area.reaction insert -1 value {type:{$(type):0},source:{$(source):0}}
item replace entity @s enderchest.26 from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air

execute store result storage area root.stat.uuid int 1 run scoreboard players operation uuid area.reaction.fire_bar.uuid = @s uuid
$execute as @e[type=armor_stand,tag=bar,tag=player_bar] if score @s area.reaction.fire_bar.uuid = uuid area.reaction.fire_bar.uuid run function map:area/lab/reaction/fire/bar/text {type:$(type)}
function map:area/lab/reaction/fire/bar/text0 with storage area root.stat
data remove storage area root