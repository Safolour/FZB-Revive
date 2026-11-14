execute as @e[type=interaction,tag=setting.ultimate] run function system:death
kill @e[type=armor_stand,tag=setting.ultimate.label]
data remove storage mainlobby:setting_ultimate request
