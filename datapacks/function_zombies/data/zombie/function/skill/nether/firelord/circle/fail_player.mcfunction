playsound minecraft:block.end_portal.spawn hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 2
playsound minecraft:item.totem.use hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 2
particle firework ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle firework ~ ~1 ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
effect give @s blindness 1 0 true
effect give @s slowness 10 1 true
effect give @s wither 5 2 true
# 12 raw health points per unresolved pair, accumulated before submitting damage.
scoreboard players set damage health.damage_skill 120
scoreboard players operation damage health.damage_skill *= #circle_failed_pairs firelord.circle
function player_stat:health/get_damage/skill/get_damage
