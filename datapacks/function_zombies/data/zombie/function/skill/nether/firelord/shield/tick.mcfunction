# The neutralization stage is currently time-limited pending its ghast/wave mechanic.
scoreboard players add @s zombie.skill_timer 1
execute if entity @s[tag=firelord.returning] run return 0
scoreboard players add #firelord zombie.nether.guardian.shieldparticle 1
execute if score #firelord zombie.nether.guardian.shieldparticle matches 15.. run scoreboard players set #firelord zombie.nether.guardian.shieldparticle 1
execute as @a[scores={particle=0..2}] positioned ~ ~1 ~ facing entity @s eyes rotated ~ ~90 run function zombie:skill/nether/firelord/shield/particle
scoreboard players reset #firelord_hit zombie.nether.guardian.shieldparticle
execute unless entity @s[tag=firelord.p4] run function zombie:skill/nether/firelord/p2/tick
