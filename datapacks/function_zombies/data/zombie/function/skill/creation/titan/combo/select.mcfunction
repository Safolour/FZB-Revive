# Two independent draws, not a mutually-exclusive three-way table.
execute store result score @s titan.sword_rng run random value 0..199
execute store result score @s titan.scat_rng run random value 0..199
function zombie:skill/creation/titan/combo/classify
scoreboard players set @s titan.combo_age 0
# Full source-start residual, excluding the union of cast ticks. These ranges
# fit replay intervals at 20 TPS; they are reconstruction choices, not recovered RNG.
execute if score @s titan.followup matches 0 store result score @s titan.tp_cd run random value 47..70
execute if score @s titan.followup matches 1.. store result score @s titan.tp_cd run random value 62..88
