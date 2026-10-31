
#say end 4 init 5

function zombie:skill/nether/guardian/warped/1/guardian/blaze/clear
function zombie:skill/nether/guardian/warped/1/guardian/suspense/clear

function zombie:skill/nether/guardian/crimson/2/init


execute as @n[type=marker,tag=skill.guardian.floor.platform.marker,limit=1,sort=random] at @s positioned ~ ~2 ~ run function map:powerup/summon/maxammo
