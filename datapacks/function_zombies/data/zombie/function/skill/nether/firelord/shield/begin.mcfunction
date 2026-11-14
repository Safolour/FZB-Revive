# The first transition is at two thirds of maximum health (user-specified).
execute if score @s zombie.health matches ..0 run scoreboard players set @s zombie.health 1
scoreboard players operation @s zombie.health0 = @s zombie.health
execute if entity @s[tag=firelord.charging] run team join mob @s
execute if entity @s[tag=firelord.charging] run data merge entity @s {Glowing:0b}
tag @s remove firelord.charging
tag @s add skill.firelord.shield
tag @s add skill.firelord.shield.used
tag @s add firelord.returning
tag @s remove hitable
tag @s add nogold
scoreboard players set @s zombie.armor 100
scoreboard players set @s zombie.skill_timer 0
data merge entity @s {NoAI:1b,Invulnerable:1b}
particle flame ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound block.fire.extinguish hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0.5
playsound entity.blaze.shoot hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0.7
execute positioned 300.5 101 131.5 run summon marker ~ ~ ~ {Tags:["firelord.travel.target"]}
execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["mob.skill","skill.firelord.travel","firelord.travel.return"]}
tp @s ~ ~10000 ~

# Shield interrupts the current ability cycle; P3 starts a fresh cycle.
tag @s remove fl.volley.spent
tag @s remove fl.charge.wait
tag @s remove fl.choose.after_travel
tag @s remove fl.choose.other
tag @s remove firelord.fire.pending
tag @s remove firelord.combo.first
tag @s remove firelord.combo.second
tag @s remove firelord.combo.third
# Preserve the P1 volley count across the shield stage.
scoreboard players set @s firelord.circle 0
