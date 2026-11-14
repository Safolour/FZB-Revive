# Executor: the actual attacker. Keep the match's shared cut unchanged.
# Training uses the same per-player penalty, counting its own room's players.
scoreboard players operation #cut_local perk.gold_thrower = #cut perk.gold_thrower
execute unless entity @s[scores={system.room=2}] run return 0
execute store result score #cut_local perk.gold_thrower run execute if entity @a[scores={system.room=2}]
scoreboard players operation #cut_local perk.gold_thrower *= cut_per_player perk.gold_thrower
scoreboard players operation #cut_local perk.gold_thrower < cut_max perk.gold_thrower
