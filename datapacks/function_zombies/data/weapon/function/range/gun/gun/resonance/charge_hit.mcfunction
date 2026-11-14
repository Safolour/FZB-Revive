execute if entity @s[tag=skill.firelord.shield] run return 0
execute if entity @s[type=marker,tag=skill.creation.rampart.shield] run return 0
execute if entity @a[tag=resonance_shooter,tag=weapon.res_cast,limit=1] run return 0
# Once per target per ordinary projectile; the Q laser does not recharge itself.
scoreboard players add @a[tag=resonance_shooter,limit=1] weapon.res_charge 3
execute as @a[tag=resonance_shooter,limit=1,scores={weapon.res_charge=1001..}] run scoreboard players set @s weapon.res_charge 1000
