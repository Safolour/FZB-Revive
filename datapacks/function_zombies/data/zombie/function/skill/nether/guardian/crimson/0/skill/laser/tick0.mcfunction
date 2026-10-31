
scoreboard players add @s zombie.nether.guardian.laser 1

scoreboard players set range zombie.nether.guardian.laser 15
function zombie:skill/nether/guardian/crimson/0/skill/laser/tp


execute unless score @s zombie.nether.guardian.laser matches 25.. run return fail

kill @s