
scoreboard players operation @s revive.player_model.uuid = uuid uuid

function animated_java:player_display/zzz/summon/as_root_entity
function animated_java:player_display/animations/swing/play
$execute on passengers run item replace entity @s[tag=aj.player_display.bone.head] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/head",minecraft:profile="$(name)"]

$execute if score slim stat.slim matches 0 on passengers run item replace entity @s[tag=aj.player_display.bone.right_arm] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_arm",minecraft:profile="$(name)"]
$execute if score slim stat.slim matches 0 on passengers run item replace entity @s[tag=aj.player_display.bone.left_arm] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_arm",minecraft:profile="$(name)"]

$execute if score slim stat.slim matches 1 on passengers run item replace entity @s[tag=aj.player_display.bone.right_arm] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_arm",minecraft:profile="$(name)",custom_model_data={strings:[slim]}]
$execute if score slim stat.slim matches 1 on passengers run item replace entity @s[tag=aj.player_display.bone.left_arm] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_arm",minecraft:profile="$(name)",custom_model_data={strings:[slim]}]

$execute on passengers run item replace entity @s[tag=aj.player_display.bone.torso] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/torso",minecraft:profile="$(name)"]
$execute on passengers run item replace entity @s[tag=aj.player_display.bone.right_leg] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/right_leg",minecraft:profile="$(name)"]
$execute on passengers run item replace entity @s[tag=aj.player_display.bone.left_leg] hotbar.0 with minecraft:player_head[minecraft:item_model="animated_java:blueprint/player_display/left_leg",minecraft:profile="$(name)"]

tag @s remove chosen