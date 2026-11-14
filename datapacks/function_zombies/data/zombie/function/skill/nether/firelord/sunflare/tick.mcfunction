scoreboard players add @s fl.sunflare 1
function zombie:skill/nether/firelord/sunflare/particle
# 2026-10-23 replay: one flame and one large-smoke packet each tick at the boss body.
particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
scoreboard players operation #flare.tick fl.sunflare = @s fl.sunflare
scoreboard players set #flare.period fl.sunflare 5
scoreboard players operation #flare.tick fl.sunflare %= #flare.period fl.sunflare
execute if score #flare.tick fl.sunflare matches 0 run function zombie:skill/nether/firelord/sunflare/pulse
execute if score @s fl.sunflare matches 200.. run tag @s remove firelord.sunflare.active
