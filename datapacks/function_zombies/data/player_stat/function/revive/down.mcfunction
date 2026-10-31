
execute if score @s perk.selfexplosion matches 1 run function map:perk/selfexplosion
team leave @s
team join mob @s

scoreboard players operation @s health.regeneration_timer = @s health.heal_speed
scoreboard players add @s stat.times_knock_down 1
attribute @s max_health base set 20
effect give @s instant_health 1 6 true
effect give @s invisibility infinite 0 true
effect give @s weakness infinite 255 true

scoreboard players set @s stat.player 2
scoreboard players set @s inventory.lock 0
gamemode adventure @s[gamemode=spectator]
function map:shop/interact/open
function map:area/detect
execute on attacker if entity @s[tag=mob] run data modify storage revive root.down.target set from entity @s data.name

loot replace block 1 -60 1 container.0 loot map:playerhead
execute store result storage game root.player.uuid int 1 run scoreboard players get @s uuid
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
function player_stat:revive/down0 with storage game root.player
function player_stat:revive/down1 with storage revive root.down
execute unless data storage revive root.down.target run function player_stat:revive/down1_0 with storage revive root.down
data remove storage game root
item replace block 1 -60 1 container.0 with air
data remove storage revive root.down.target

tag @s add chosen.playsound
execute as @a[scores={system.room=4..},tag=!chosen.playsound] at @s run playsound entity.ender_dragon.ambient record @s ~ ~ ~ 1 0 0
tag @s remove chosen.playsound

clear @s
execute positioned ~ ~1 ~ run function player_stat:revive/down2
tag @s remove ride

scoreboard players set @s stat.burn_timer -1