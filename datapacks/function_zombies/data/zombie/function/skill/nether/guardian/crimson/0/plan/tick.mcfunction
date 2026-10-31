scoreboard players operation max_health zombie.number = @s zombie.max_health
scoreboard players operation health zombie.number = @s zombie.health

scoreboard players set 100 zombie.number 100
scoreboard players operation health zombie.number *= 100 zombie.number
scoreboard players operation health zombie.number /= max_health zombie.number

execute if score health zombie.number matches ..67 unless entity @s[tag=skill.crimsonguardian.shield] run function zombie:skill/nether/guardian/crimson/0/plan/end0
execute if entity @s[tag=skill.crimsonguardian.shield] if score cooldown zombie.nether.guardian.skill matches 0 run function zombie:skill/nether/guardian/crimson/0/skill/floatdown/init


scoreboard players reset max_health zombie.number
scoreboard players reset health zombie.number
scoreboard players reset 100 zombie.number

execute if score cooldown zombie.nether.guardian.skill matches 1.. run scoreboard players remove cooldown zombie.nether.guardian.skill 1
execute if score cooldown zombie.nether.guardian.skill matches 1.. run return 0

execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 11 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 10 run function zombie:skill/nether/guardian/crimson/0/plan/skill/missile
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 9 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 8 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 7 run function zombie:skill/nether/guardian/crimson/0/plan/skill/laser
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 6 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 5 run function zombie:skill/nether/guardian/crimson/0/plan/skill/suspense
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 4 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 3 run function zombie:skill/nether/guardian/crimson/0/plan/skill/shockwave
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 2 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 1 run function zombie:skill/nether/guardian/crimson/0/plan/skill/suspense
execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 0 run function zombie:skill/nether/guardian/crimson/0/plan/skill/move

execute if score cooldown zombie.nether.guardian.skill matches 0 if score number zombie.nether.guardian.skill matches 11.. run scoreboard players set number zombie.nether.guardian.skill 0
