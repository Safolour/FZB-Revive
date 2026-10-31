


loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
scoreboard players operation uuid uuid = @s uuid
execute store result storage game root.player.uuid int 1 run scoreboard players get uuid uuid
scoreboard players remove uuid uuid 1
execute store result storage game root.player.uuid0 int 1 run scoreboard players get uuid uuid
function map:game/quit0 with storage game root.player
data remove storage game root
item replace block 1 -60 1 container.0 with air
function mainlobby:tp_lobby
tellraw @a[scores={system.room=4..}] [{translate:zb.multiplayer.0,with:[{"selector":"@s",color:gray}]}]
#execute unless entity @a[scores={system.room=4..}] run function _:_init