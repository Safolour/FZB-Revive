scoreboard players operation max_health zombie.number = @s zombie.max_health
scoreboard players operation health zombie.number = @s zombie.health

scoreboard players operation health zombie.number *= 100 number
scoreboard players operation health zombie.number /= max_health zombie.number

execute if score health zombie.number matches ..67 unless entity @s[tag=skill.warpedguardian.shield] run function zombie:skill/nether/guardian/warped/0/plan/end0
execute if entity @s[tag=skill.warpedguardian.shield] if score cooldown0 zombie.nether.guardian.skill matches 0 run function zombie:skill/nether/guardian/warped/0/skill/floatdown/init


scoreboard players reset max_health zombie.number
scoreboard players reset health zombie.number

execute if score cooldown0 zombie.nether.guardian.skill matches 1.. run scoreboard players remove cooldown0 zombie.nether.guardian.skill 1
execute if score cooldown0 zombie.nether.guardian.skill matches 1.. run return 0

execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 10 run function zombie:skill/nether/guardian/warped/0/plan/skill/move
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 9 run function zombie:skill/nether/guardian/warped/0/plan/skill/labyrinth
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 8 run function zombie:skill/nether/guardian/warped/0/plan/skill/move
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 7 run function zombie:skill/nether/guardian/warped/0/plan/skill/laser
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 6 run function zombie:skill/nether/guardian/warped/0/plan/skill/move
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 5 run function zombie:skill/nether/guardian/warped/0/plan/skill/twilight
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 4 run function zombie:skill/nether/guardian/warped/0/plan/skill/attract
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 3 run function zombie:skill/nether/guardian/warped/0/plan/skill/move
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 2 run function zombie:skill/nether/guardian/warped/0/plan/skill/eclipse
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 1 run function zombie:skill/nether/guardian/warped/0/plan/skill/twilight
execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 0 run function zombie:skill/nether/guardian/warped/0/plan/skill/move

execute if score cooldown0 zombie.nether.guardian.skill matches 0 if score number0 zombie.nether.guardian.skill matches 10.. run scoreboard players set number0 zombie.nether.guardian.skill 0
