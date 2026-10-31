
tag @s remove chosen
execute unless entity @s[scores={stat.player=2..3}] run return fail
function system:title_clear
tp @s ~ ~ ~ facing ^ ^ ^1
execute align y unless block ~ ~ ~ air run tp @s ~ ~1 ~
team leave @s
team join game.player @s
gamemode adventure @s[gamemode=spectator]
scoreboard players set @s stat.player 1
scoreboard players set @s inventory.armor0 -1
scoreboard players set @s gold0 -1
scoreboard players set @s inventory.lock 1
scoreboard players set @s interaction.state 1
effect clear @s weakness
effect clear @s invisibility
effect give @s saturation infinite 0 true
effect give @s resistance infinite 4 true
effect give @s mining_fatigue infinite 2 true
function bs.health:set/health {points:20}
function inventory:item_restore0
function map:perk/extra_health
execute store result storage revive root.max_health int 1 run scoreboard players get @s stat.max_health
execute store result storage revive root.health int 0.5 run scoreboard players get @s stat.max_health
execute as @s at @s run function player_stat:revive/revive_self_0 with storage revive root
data remove storage revive root
title @s actionbar [{text:""}]
scoreboard players operation @s revive.cooldown = cooldown revive.cooldown

scoreboard players operation @s health.invincible_timer = basic health.invincible
scoreboard players set @s health.damage_resisted 0
scoreboard players set @s health.damage_skill 0
scoreboard players set @s zombie.nether.lava.damage_count 0
scoreboard players operation @s health.regeneration_timer = @s health.heal_speed
function player_stat:revive/playe_model_remove


#scoreboard players set @s weapon.gun_pistol_reload 1
#scoreboard players set @s weapon.gun_rifle_reload 1
#scoreboard players set @s weapon.gun_shotgun_reload 1
#scoreboard players set @s weapon.gun_soaker_reload 1
#scoreboard players set @s weapon.gun_flamethrower_reload 1
#scoreboard players set @s weapon.gun_zapper_reload 1
#scoreboard players set @s weapon.gun_sniper_reload 1
#scoreboard players set @s weapon.gun_eldergun_reload 1
#scoreboard players set @s weapon.gun_snowballcannon_reload 1
#scoreboard players set @s weapon.gun_musicgun_reload 1
#scoreboard players set @s weapon.gun_rocketlauncher_reload 1
#scoreboard players set @s weapon.gun_airgun_reload 1
#scoreboard players set @s weapon.gun_magnum_reload 1
#scoreboard players set @s weapon.gun_machinegun_reload 1