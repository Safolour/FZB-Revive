# Use the real UUID, so cleanup still works before/after game UUID reinitialization.
data modify storage mainlobby:setting_environment context set value {}
execute store result storage mainlobby:setting_environment context.u0 int 1 run data get entity @s UUID[0]
execute store result storage mainlobby:setting_environment context.u1 int 1 run data get entity @s UUID[1]
execute store result storage mainlobby:setting_environment context.u2 int 1 run data get entity @s UUID[2]
execute store result storage mainlobby:setting_environment context.u3 int 1 run data get entity @s UUID[3]
