scoreboard players operation max_health zombie.number = @s zombie.max_health
scoreboard players operation health zombie.number = @s zombie.health

scoreboard players set 100 zombie.number 100
scoreboard players operation health zombie.number *= 100 zombie.number
scoreboard players operation health zombie.number /= max_health zombie.number

execute if score health zombie.number matches ..33 unless entity @s[tag=skill.warpedguardian.shield] run function zombie:skill/nether/guardian/warped/0/skill/shield/init
#execute if entity @s[tag=skill.crimsonguardian.shield] if score cooldown1 zombie.nether.guardian.skill matches 0 run function zombie:skill/nether/guardian/warped/2/skill/floatdown/init


scoreboard players reset max_health zombie.number
scoreboard players reset health zombie.number
scoreboard players reset 100 zombie.number
