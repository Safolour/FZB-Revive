tag @s remove firelord.sunflare.pending
tag @s add firelord.sunflare.active
scoreboard players set @s fl.sunflare 0
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.firelord.0"}

# Cancel queued ranged actions; the active flare is a melee pursuit phase.
execute if entity @s[tag=firelord.charging] run data merge entity @s {NoAI:0b,Glowing:0b}
execute if entity @s[tag=firelord.charging] run team join mob @s
execute if entity @s[tag=firelord.charging] run attribute @s minecraft:knockback_resistance base set 0
tag @s remove firelord.charging
tag @s remove fl.charge.wait
tag @s remove firelord.fire.pending
tag @s remove firelord.combo.first
tag @s remove firelord.combo.second
tag @s remove firelord.combo.third
tag @s remove fl.volley.first
tag @s remove fl.choose.after_travel
tag @s add fl.choose.other
scoreboard players set @s zombie.skill_timer 0
