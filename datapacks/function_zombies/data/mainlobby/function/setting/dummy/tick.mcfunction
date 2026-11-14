# Call once per server tick, independently of the room's individual players.
execute as @a[scores={setting.dps_run=1}] at @s run function mainlobby:setting/dummy/player_tick
execute unless entity @a[scores={system.room=2}] as @e[type=zombie,tag=setting.dummy] run function system:death
execute if entity @a[scores={system.room=2}] run function mainlobby:setting/dummy/spawn
execute as @e[type=zombie,tag=setting.dummy] at @s run function mainlobby:setting/dummy/guard

