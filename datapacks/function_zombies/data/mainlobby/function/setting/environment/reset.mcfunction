# Online actors restore before the core reset removes UUID/room objectives.
execute unless data storage mainlobby:setting_environment initialized run return 0
execute as @a at @s run function mainlobby:setting/environment/reconcile
execute as @a[scores={setting.env=1}] at @s run function mainlobby:setting/environment/leave
scoreboard objectives remove setting.env
scoreboard objectives remove setting.env_clock
data remove storage mainlobby:setting_environment context
data remove storage mainlobby:setting_environment restoring
data remove storage mainlobby:setting_environment effect
data remove storage mainlobby:setting_environment initialized
# Keep offline sessions. Their real UUID snapshot is restored on the next join.
