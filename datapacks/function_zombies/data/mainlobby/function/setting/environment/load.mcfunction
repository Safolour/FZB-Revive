# Reload must not replace an active or offline player's saved session.
scoreboard objectives add setting.env dummy
scoreboard objectives add setting.env_clock dummy
scoreboard players set #20 setting.env_clock 20
scoreboard players set #19 setting.env_clock 19
scoreboard players set #wrap setting.env_clock 2147483647
data modify storage mainlobby:setting_environment initialized set value 1b
