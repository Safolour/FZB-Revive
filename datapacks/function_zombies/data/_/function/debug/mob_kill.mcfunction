
scoreboard players set @e[tag=mob] zombie.health -1
scoreboard players set @e[tag=hitable] zombie.health -1
kill @e[type=marker,tag=skill.creation.rampart.shield]
# Neutralization ghast is invulnerable and is not in the normal mob damage system.
kill @e[type=ghast,tag=firelord.p2.ghast]
