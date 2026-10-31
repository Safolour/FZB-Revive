scoreboard players add number0 zombie.nether.guardian.skill 1
scoreboard players set cooldown0 zombie.nether.guardian.skill 100

# store result score blockcount zombie.nether.guardian.skill if entity @e[type=marker,tag=skill.guardian.floor.platform.marker]

#execute if score blockcount zombie.nether.guardian.skill matches 140.. run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/init
#execute if score blockcount zombie.nether.guardian.skill matches ..139 run function zombie:skill/nether/guardian/warped/0/skill/eclipse/init

#scoreboard players reset blockcount zombie.nether.guardian.skill
function zombie:skill/nether/guardian/warped/0/skill/eclipse/init
