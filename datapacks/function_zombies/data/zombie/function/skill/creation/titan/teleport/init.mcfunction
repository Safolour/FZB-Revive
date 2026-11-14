# Replay-fitted first start: approximately 2.0..2.9 s after the entrance reveal.
execute store result score @s titan.tp_cd run random value 40..58
function zombie:skill/creation/titan/combo/reset
scoreboard players set @s titan.tp_age 0
scoreboard players set @s titan.tp_glow 0
