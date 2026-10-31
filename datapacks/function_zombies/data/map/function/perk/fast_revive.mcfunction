
execute if items entity @s container.* *[custom_data~{tag:["fast_revive"]}] run return run scoreboard players operation @s stat.revive_time = fast_revive stat.revive_time
scoreboard players operation @s stat.revive_time = default stat.revive_time