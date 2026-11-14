# Cancel queued follow-ups without disturbing an externally paused teleport timer.
scoreboard players set @s titan.followup 0
scoreboard players set @s titan.combo_age 0
execute unless entity @s[tag=titan.sword.cast] run scoreboard players set @s titan.sword_age 0
execute unless entity @s[tag=titan.scatter.cast] run scoreboard players set @s titan.scat_age 0
scoreboard players set @s titan.sword_rng -1
scoreboard players set @s titan.scat_rng -1
tag @s add titan.combo.ready
