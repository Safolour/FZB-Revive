
scoreboard players add @s zombie.nether.guardian.laser 1

scoreboard players set range zombie.nether.guardian.laser 15
function zombie:skill/nether/guardian/warped/0/skill/laser/tp


execute unless score @s zombie.nether.guardian.laser matches 30.. run return fail

kill @s